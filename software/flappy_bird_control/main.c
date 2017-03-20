/*
 * main.c
 *
 *  Created on: Nov 26, 2015
 *      Author: Zefan Xu
 */
 #include <stdio.h>
#include "math.h"


volatile unsigned int * birdx = (unsigned int*) 0x30;
volatile unsigned int * helicopterY = (unsigned int*) 0x20;
volatile unsigned int * pipe1 = (unsigned int*) 0x50;
volatile unsigned int * pipe_x = (unsigned int*) 0x40;
volatile unsigned int * pipe2 = (unsigned int*) 0x60;
volatile unsigned int * pipe3 = (unsigned int*) 0x70;
volatile unsigned int * pipe4 = (unsigned int*) 0x90;
volatile unsigned int * pipe5 = (unsigned int*) 0x80;

volatile unsigned int * status = (unsigned int*) 0xA0;
volatile unsigned int * press = (unsigned int*) 0xB0;
volatile unsigned int * keycode = (unsigned int*) 0xC0;

volatile unsigned int * TextY = (unsigned int*) 0xD0;
volatile unsigned int * TextX = (unsigned int*) 0xE0;
volatile unsigned int * ScoreX = (unsigned int*) 0x100;
volatile unsigned int * ScoreY = (unsigned int*) 0xF0;
volatile unsigned int * first = (unsigned int*) 0x130;
volatile unsigned int * third = (unsigned int*) 0x110;
volatile unsigned int * second = (unsigned int*) 0x120;
volatile unsigned int * ScoreX2 = (unsigned int*) 0x160;
volatile unsigned int * ScoreY2 = (unsigned int*) 0x150;
volatile unsigned int * first2 = (unsigned int*) 0x190;
volatile unsigned int * second2 = (unsigned int*) 0x180;
volatile unsigned int * third2 = (unsigned int*) 0x170;
volatile unsigned int * birdy2 = (unsigned int*) 0x140;




 static double timeCount, YPosition1, pipeXposition, timeCount2, YPosition12;
 static int y_init, jump, gameOn, score, AIPlay, tempHeight, y_init2, jump2, dead1, dead2,score2;
 static int pressed = 0;
 static int too_high = 0;
 static int two_players;
 static int bestscore = 0;

 int debouncer(){

	 pressed = pressed | (*press);
	 int unreleased = (*press);
	 int released = !unreleased;
	 if (pressed){
		 if (released){
			 pressed = 0;
			 return 1;
		 }
	 }
	 return 0;
 }

 int randomHeight(){
 	int out = 120 + rand() % 180;
 	return out;
 }

 void initialize_game(){
 	y_init = 280;
 	*birdx = 0;
 	*helicopterY = y_init;
 	timeCount = 0;
 	YPosition1 = y_init;

 	y_init2 = 200;
 	*birdy2 = y_init2;
 	timeCount2 = 0;
 	YPosition12 = y_init2;

 	*pipe_x = 980;
 	*pipe1 = randomHeight();
 	*pipe2 = randomHeight();
 	*pipe3 = randomHeight();
 	*pipe4 = randomHeight();
 	*pipe5 = randomHeight();
 	pipeXposition = *pipe_x;

 	score = 0;
 	score2 = 0;
 	jump = 0;
 	gameOn = 0;
	AIPlay = 0;
	jump2 = 0;
	dead1 = 0;
	dead2 = 0;

	tempHeight = 0;
	*ScoreX = 100;
	*ScoreY = 0;
	*ScoreX2 = 600;
	*ScoreY2 = 0;

	two_players = 0;
 }

 int AIPlayer(int helicopterY, int pipex){
	int nextHeight;
 	if (pipex >= 450 ) nextHeight = *pipe5 + 90 - 36;
 	else if (pipex <= 180 && pipex >= 100) nextHeight = *pipe3 + 90 - 36;
 	else nextHeight = *pipe2 + 90 - 36;
 	if (!jump && (helicopterY >= (nextHeight - 10))) {
 		timeCount = 0;
 		y_init = YPosition1;
 		jump = 1;
 		tempHeight = helicopterY;
 	}
 	if (helicopterY < (nextHeight - 10)) {
 		jump = 0;
 	}
 	else if (helicopterY < (tempHeight - 51)) {
 		jump = 0;
 	}
 }

 int alive(int helicopterY, int pipex){
 	if (pipex <= 540 + 51 && pipex >= 450){
 		if ((helicopterY > *pipe5 - 90 + 33) && (helicopterY < *pipe5 + 90 - 36)) return 1;
 		else return 0;
 	}
 	else if ((pipex <= 270 + 51 && pipex >= 180)){
 		if ((helicopterY > *pipe2 - 90 + 33) && (helicopterY < *pipe2 + 90 - 36)) return 1;
 		else return 0;
 	}
 	return 0;
 }


 int main(){
 	volatile int always_one = 1;
 	int god = 0;
 	gameOn = 0;
 	while (always_one){
 		while (!gameOn){
 			if (*keycode == 90 && debouncer()) {
 				initialize_game();
				gameOn = 1;
 			}
 			else if ((*keycode == 30 || *keycode == 114) && debouncer()){    //press "2" to start two players
 				initialize_game();
 				gameOn = 1;
 				two_players = 1;
 			}
 			else{
 				*ScoreX = 600;
 				*ScoreY = 0;
 				*TextX = 260;
 				*TextY = 200;
 				*status = 1;
 				YPosition1 = 280;        //middle of the image
 				*helicopterY = 480 - YPosition1;

 				*first = bestscore % 10;
 				*second = (bestscore / 10) % 10;
 				*third = (bestscore / 100) % 10;
 			}
 		}
 		while (gameOn){
 			if (two_players == 0) *status = 0;
 			else *status = 3;
 			if (*keycode == 28 && debouncer() && !AIPlay) {    //press 'a' is AI player
 				AIPlay = 1;
 			}
 			if (*keycode == 21 && debouncer() && AIPlay) {    // press 'q' cancels AI
 				AIPlay = 0;
 			}
 			if (AIPlay) AIPlayer(*helicopterY, pipeXposition);
 			if (*keycode == 42) {    //this is god mode
 				god = god == 1? 0 : 1;
 			}
 			if (*keycode == 41 && debouncer()) {
 				jump = 1;
 				timeCount = 0;
 				y_init = YPosition1;
 				printf("jump");
 			}
 				timeCount += 0.033;
 				YPosition1 = 0.5 * (-5) * timeCount * timeCount + timeCount * 36 + y_init;

 			if (god == 0 && YPosition1 < 80 || !alive(*helicopterY, pipeXposition)) {
 				jump = 0;
 				dead1 = 1;
 			}
 			if (YPosition1 > 460) {
 				YPosition1 = 479;
 				timeCount = 3.6;
 				y_init = 415;
 			}
 			if (YPosition12 > 460) {
 				YPosition12 = 479;
 				timeCount2 = 3.6;
 				y_init2 = 415;
 			}
 			if (!dead1)
 				*helicopterY = 480 - YPosition1;
 			//update position for the second bird///////////////////////////////////////////////////////
 			if (*keycode == 117 && debouncer()) {       // second player press "8" to jump
 				jump2 = 1;
 				timeCount2 = 0;
 				y_init2 = YPosition12;
 			}

 				timeCount2 += 0.033;
 				YPosition12 = 0.1 * (-5) * timeCount2 * timeCount2 + timeCount2 * 10 + y_init2;

 			if (god == 0 && YPosition12 < 80 || !alive(*birdy2, pipeXposition)) {
 				jump2 = 0;
 				dead2 = 1;
 			}
 			if (!dead2)
 				*birdy2 = 480 - YPosition12;

 			if ((dead1 && two_players == 0) || (dead1 && dead2 && two_players)){
 				gameOn = 0;
 				break;
 			}
 		//check the score for two cases
 			if (!dead1){
 				if (pipeXposition <= 450 && pipeXposition > 449.7) score++;
 				if (pipeXposition <= 180 && pipeXposition > 179.7) score++;
 				*first = score % 10;
 				*second = (score / 10) % 10;
 				*third = (score / 100) % 10;
 			}
 			if (!dead2){
 				if (pipeXposition <= 450 && pipeXposition > 449.7) score2++;
 				if (pipeXposition <= 180 && pipeXposition > 179.7) score2++;
 				*first2 = score2 % 10;
 				*second2 = (score2 / 10) % 10;
 				*third2 = (score2 / 100) % 10;
 			}
 			if (dead1 && two_players){
 				*helicopterY = -50;
 			}
 			if (dead2 && two_players){
 				*birdy2 = -50;
 			}

		//update pipe x position ///////////////////////////////////////////////////////////////////////
 			pipeXposition -= 0.3;

 			if (pipeXposition <= 100){
 				*pipe5 = *pipe3;
 				*pipe2 = *pipe1;
 				pipeXposition = 640;
 				*pipe1 = *pipe4;
 				*pipe3 = randomHeight();
 				*pipe4 = randomHeight();
 			}
 			*pipe_x = pipeXposition;
 		}
 		if (!gameOn){
 			int i;
 			bestscore = (score > bestscore) ? score : bestscore;
 			bestscore = (score2 > bestscore) ? score2 : bestscore;
 			for (i = 0; i < 5000; i++) rand();
 			gameOn = 0;
 		}
 	}

 }
