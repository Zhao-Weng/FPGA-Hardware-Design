
 

module  color_mapper ( input    signed    [10:0] BirdPositionX, BirdPositionY, DrawX, DrawY, PipePositionX, PipePositionY1, PipePositionY2, PipePositionY3, PipePositionY4, PipePositionY5,
                                          TextX, TextY, DigitPositionX, DigitPositionY, BirdPositionY2,
                                          DigitPositionX2, DigitPositionY2,
                       input        [15:0] status,
                       input        [15:0] first, second, third, first2, second2, third2, level,
                       output logic [7:0]  Red, Green, Blue );

        logic qing, orange, levelRed, 
		  green_on, black_on, sky_on, dirt_on, grassland_on, ground_on, grass_on, bird_blue, bird_red, bird_yellow, bird_white, bird_black, bird_light_green;
        reg  PipesGreenBodyTop, PipesGreenTop, PipesBlackTop, PipesGreenBot, PipesBlackBot, PipesBlackBodyTop, PipesGreenBodyBot, PipesBlackBodyBot,
        PipesGreenBodyTop2, PipesGreenTop2, PipesBlackTop2, PipesGreenBot2, PipesBlackBot2, PipesBlackBodyTop2, PipesGreenBodyBot2, PipesBlackBodyBot2,
        PipesGreenBodyTop3, PipesGreenTop3, PipesBlackTop3, PipesGreenBot3, PipesBlackBot3, PipesBlackBodyTop3, PipesGreenBodyBot3, PipesBlackBodyBot3,
        PipesGreenBodyTop4, PipesGreenTop4, PipesBlackTop4, PipesGreenBot4, PipesBlackBot4, PipesBlackBodyTop4, PipesGreenBodyBot4, PipesBlackBodyBot4,
        PipesGreenBodyTop5, PipesGreenTop5, PipesBlackTop5, PipesGreenBot5, PipesBlackBot5, PipesBlackBodyTop5, PipesGreenBodyBot5, PipesBlackBodyBot5,
        TextDown, TextWhite, TextBlack, TextUp,
        DigitBlack, DigitWhite, DigitBlack2nd, DigitWhite2nd, DigitBlack3rd, DigitWhite3rd,
        DigitBlack2P, DigitWhite2P, DigitBlack2nd2P, DigitWhite2nd2P, DigitBlack3rd2P, DigitWhite3rd2P,
        Sky, Dirt, Grassland, OnGrass, Ground,
        BirdWhite, BirdYellow, supermanBlack, supermanBlue, supermanRed, helicopterBlack, helicopterBlue, helicopterRed,
        BirdBlack2, BirdWhite2, BirdYellow2, BirdRed2;
     
        


always @ (DrawX or DrawY)
begin


//up pipes 
PipesGreenBodyTop <= (DrawX>=PipePositionX+12) && (DrawX<=PipePositionX+78) && (DrawY>=0) && (DrawY<=PipePositionY1 - 90 );

PipesBlackBodyTop <= (DrawX>=PipePositionX+9) && (DrawX<=PipePositionX+12) && (DrawY>=0) && (DrawY<=PipePositionY1 - 90 )
|| (DrawX>=PipePositionX+78) && (DrawX<=PipePositionX+81) && (DrawY>=0) && (DrawY<=PipePositionY1 - 90 );

PipesBlackTop <= (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +0) && (DrawY<=PipePositionY1 - 90 +3)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +3) && (DrawY<=PipePositionY1 - 90 +6)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +3) && (DrawY<=PipePositionY1 - 90 +6)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +6) && (DrawY<=PipePositionY1 - 90 +9)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +6) && (DrawY<=PipePositionY1 - 90 +9)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +9) && (DrawY<=PipePositionY1 - 90 +12)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +9) && (DrawY<=PipePositionY1 - 90 +12)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +12) && (DrawY<=PipePositionY1 - 90 +15)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +12) && (DrawY<=PipePositionY1 - 90 +15)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +15) && (DrawY<=PipePositionY1 - 90 +18)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +15) && (DrawY<=PipePositionY1 - 90 +18)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +18) && (DrawY<=PipePositionY1 - 90 +21)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +18) && (DrawY<=PipePositionY1 - 90 +21)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +21) && (DrawY<=PipePositionY1 - 90 +24)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +21) && (DrawY<=PipePositionY1 - 90 +24)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +24) && (DrawY<=PipePositionY1 - 90 +27)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +24) && (DrawY<=PipePositionY1 - 90 +27)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>=PipePositionY1 - 90 +27) && (DrawY<=PipePositionY1 - 90 +30)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +27) && (DrawY<=PipePositionY1 - 90 +30)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+90) && (DrawY>=PipePositionY1 - 90 +30) && (DrawY<=PipePositionY1 - 90 +33);

PipesGreenTop <= (DrawX>=PipePositionX+3) && (DrawX<=PipePositionX+87) && (DrawY>=PipePositionY1 - 90 +3) && (DrawY<=PipePositionY1 - 90 +30);

///low pipes 
PipesGreenBodyBot <= (DrawX>=PipePositionX+12) && (DrawX<=PipePositionX+78) && (DrawY>= PipePositionY1 + 90 );

PipesBlackBodyBot <= (DrawX>=PipePositionX+9) && (DrawX<=PipePositionX+12) && (DrawY>= PipePositionY1 + 90 +33)
|| (DrawX>=PipePositionX+78) && (DrawX<=PipePositionX+81) && (DrawY>= PipePositionY1 + 90 +33);

PipesBlackBot <= (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +0) && (DrawY<= PipePositionY1 + 90 +3)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +3) && (DrawY<= PipePositionY1 + 90 +6)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +3) && (DrawY<= PipePositionY1 + 90 +6)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +6) && (DrawY<= PipePositionY1 + 90 +9)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +6) && (DrawY<= PipePositionY1 + 90 +9)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +9) && (DrawY<= PipePositionY1 + 90 +12)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +9) && (DrawY<= PipePositionY1 + 90 +12)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +12) && (DrawY<= PipePositionY1 + 90 +15)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +12) && (DrawY<= PipePositionY1 + 90 +15)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +15) && (DrawY<= PipePositionY1 + 90 +18)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +15) && (DrawY<= PipePositionY1 + 90 +18)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +18) && (DrawY<= PipePositionY1 + 90 +21)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +18) && (DrawY<= PipePositionY1 + 90 +21)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +21) && (DrawY<= PipePositionY1 + 90 +24)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +21) && (DrawY<= PipePositionY1 + 90 +24)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +24) && (DrawY<= PipePositionY1 + 90 +27)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +24) && (DrawY<= PipePositionY1 + 90 +27)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+3) && (DrawY>= PipePositionY1 + 90 +27) && (DrawY<= PipePositionY1 + 90 +30)
||          (DrawX>=PipePositionX+87) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +27) && (DrawY<= PipePositionY1 + 90 +30)
||          (DrawX>=PipePositionX+0) && (DrawX<=PipePositionX+90) && (DrawY>= PipePositionY1 + 90 +30) && (DrawY<= PipePositionY1 + 90 +33);

PipesGreenBot <= (DrawX>=PipePositionX+3) && (DrawX<=PipePositionX+87) && (DrawY>= PipePositionY1 + 90 +3) && (DrawY<= PipePositionY1 + 90 +30);


//second set of pipes definition 

PipesGreenBodyTop2 <= (DrawX>=PipePositionX - 270 +12) && (DrawX<=PipePositionX - 270 +78) && (DrawY>=0) && (DrawY<=PipePositionY2 - 90 );

PipesBlackBodyTop2 <= (DrawX>=PipePositionX - 270 +9) && (DrawX<=PipePositionX - 270 +12) && (DrawY>=0) && (DrawY<=PipePositionY2 - 90 )
|| (DrawX>=PipePositionX - 270 +78) && (DrawX<=PipePositionX - 270 +81) && (DrawY>=0) && (DrawY<=PipePositionY2 - 90 );

PipesBlackTop2 <= (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +0) && (DrawY<=PipePositionY2 - 90 +3)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +3) && (DrawY<=PipePositionY2 - 90 +6)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +3) && (DrawY<=PipePositionY2 - 90 +6)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +6) && (DrawY<=PipePositionY2 - 90 +9)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +6) && (DrawY<=PipePositionY2 - 90 +9)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +9) && (DrawY<=PipePositionY2 - 90 +12)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +9) && (DrawY<=PipePositionY2 - 90 +12)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +12) && (DrawY<=PipePositionY2 - 90 +15)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +12) && (DrawY<=PipePositionY2 - 90 +15)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +15) && (DrawY<=PipePositionY2 - 90 +18)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +15) && (DrawY<=PipePositionY2 - 90 +18)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +18) && (DrawY<=PipePositionY2 - 90 +21)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +18) && (DrawY<=PipePositionY2 - 90 +21)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +21) && (DrawY<=PipePositionY2 - 90 +24)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +21) && (DrawY<=PipePositionY2 - 90 +24)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +24) && (DrawY<=PipePositionY2 - 90 +27)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +24) && (DrawY<=PipePositionY2 - 90 +27)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>=PipePositionY2 - 90 +27) && (DrawY<=PipePositionY2 - 90 +30)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +27) && (DrawY<=PipePositionY2 - 90 +30)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +90) && (DrawY>=PipePositionY2 - 90 +30) && (DrawY<=PipePositionY2 - 90 +33);

PipesGreenTop2 <= (DrawX>=PipePositionX - 270 +3) && (DrawX<=PipePositionX - 270 +87) && (DrawY>=PipePositionY2 - 90 +3) && (DrawY<=PipePositionY2 - 90 +30);

//lower pipes 
PipesGreenBodyBot2 <= (DrawX>=PipePositionX - 270 +12) && (DrawX<=PipePositionX - 270 +78) && (DrawY>= PipePositionY2 + 90 );

PipesBlackBodyBot2 <= (DrawX>=PipePositionX - 270 +9) && (DrawX<=PipePositionX - 270 +12) && (DrawY>= PipePositionY2 + 90 +33)
|| (DrawX>=PipePositionX - 270 +78) && (DrawX<=PipePositionX - 270 +81) && (DrawY>= PipePositionY2 + 90 +33);

PipesBlackBot2 <= (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +0) && (DrawY<= PipePositionY2 + 90 +3)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +3) && (DrawY<= PipePositionY2 + 90 +6)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +3) && (DrawY<= PipePositionY2 + 90 +6)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +6) && (DrawY<= PipePositionY2 + 90 +9)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +6) && (DrawY<= PipePositionY2 + 90 +9)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +9) && (DrawY<= PipePositionY2 + 90 +12)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +9) && (DrawY<= PipePositionY2 + 90 +12)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +12) && (DrawY<= PipePositionY2 + 90 +15)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +12) && (DrawY<= PipePositionY2 + 90 +15)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +15) && (DrawY<= PipePositionY2 + 90 +18)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +15) && (DrawY<= PipePositionY2 + 90 +18)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +18) && (DrawY<= PipePositionY2 + 90 +21)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +18) && (DrawY<= PipePositionY2 + 90 +21)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +21) && (DrawY<= PipePositionY2 + 90 +24)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +21) && (DrawY<= PipePositionY2 + 90 +24)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +24) && (DrawY<= PipePositionY2 + 90 +27)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +24) && (DrawY<= PipePositionY2 + 90 +27)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +3) && (DrawY>= PipePositionY2 + 90 +27) && (DrawY<= PipePositionY2 + 90 +30)
||          (DrawX>=PipePositionX - 270 +87) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +27) && (DrawY<= PipePositionY2 + 90 +30)
||          (DrawX>=PipePositionX - 270 +0) && (DrawX<=PipePositionX - 270 +90) && (DrawY>= PipePositionY2 + 90 +30) && (DrawY<= PipePositionY2 + 90 +33);

PipesGreenBot2 <= (DrawX>=PipePositionX - 270 +3) && (DrawX<=PipePositionX - 270 +87) && (DrawY>= PipePositionY2 + 90 +3) && (DrawY<= PipePositionY2 + 90 +30);
//third 

PipesGreenBodyTop3 <= (DrawX>=PipePositionX + 270 +12) && (DrawX<=PipePositionX + 270 +78) && (DrawY>=0) && (DrawY<=PipePositionY3 - 90 );

PipesBlackBodyTop3 <= (DrawX>=PipePositionX + 270 +9) && (DrawX<=PipePositionX + 270 +12) && (DrawY>=0) && (DrawY<=PipePositionY3 - 90 )
|| (DrawX>=PipePositionX + 270 +78) && (DrawX<=PipePositionX + 270 +81) && (DrawY>=0) && (DrawY<=PipePositionY3 - 90 );

PipesBlackTop3 <= (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +0) && (DrawY<=PipePositionY3 - 90 +3)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +3) && (DrawY<=PipePositionY3 - 90 +6)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +3) && (DrawY<=PipePositionY3 - 90 +6)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +6) && (DrawY<=PipePositionY3 - 90 +9)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +6) && (DrawY<=PipePositionY3 - 90 +9)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +9) && (DrawY<=PipePositionY3 - 90 +12)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +9) && (DrawY<=PipePositionY3 - 90 +12)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +12) && (DrawY<=PipePositionY3 - 90 +15)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +12) && (DrawY<=PipePositionY3 - 90 +15)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +15) && (DrawY<=PipePositionY3 - 90 +18)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +15) && (DrawY<=PipePositionY3 - 90 +18)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +18) && (DrawY<=PipePositionY3 - 90 +21)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +18) && (DrawY<=PipePositionY3 - 90 +21)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +21) && (DrawY<=PipePositionY3 - 90 +24)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +21) && (DrawY<=PipePositionY3 - 90 +24)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +24) && (DrawY<=PipePositionY3 - 90 +27)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +24) && (DrawY<=PipePositionY3 - 90 +27)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>=PipePositionY3 - 90 +27) && (DrawY<=PipePositionY3 - 90 +30)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +27) && (DrawY<=PipePositionY3 - 90 +30)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +90) && (DrawY>=PipePositionY3 - 90 +30) && (DrawY<=PipePositionY3 - 90 +33);

PipesGreenTop3 <= (DrawX>=PipePositionX + 270 +3) && (DrawX<=PipePositionX + 270 +87) && (DrawY>=PipePositionY3 - 90 +3) && (DrawY<=PipePositionY3 - 90 +30);

/////////////////////////////////////////////////////////////////////////////////////////////lower pipe///////////////////////////////////
PipesGreenBodyBot3 <= (DrawX>=PipePositionX + 270 +12) && (DrawX<=PipePositionX + 270 +78) && (DrawY>= PipePositionY3 + 90 );

PipesBlackBodyBot3 <= (DrawX>=PipePositionX + 270 +9) && (DrawX<=PipePositionX + 270 +12) && (DrawY>= PipePositionY3 + 90 +33)
|| (DrawX>=PipePositionX + 270 +78) && (DrawX<=PipePositionX + 270 +81) && (DrawY>= PipePositionY3 + 90 +33);

PipesBlackBot3 <= (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +0) && (DrawY<= PipePositionY3 + 90 +3)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +3) && (DrawY<= PipePositionY3 + 90 +6)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +3) && (DrawY<= PipePositionY3 + 90 +6)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +6) && (DrawY<= PipePositionY3 + 90 +9)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +6) && (DrawY<= PipePositionY3 + 90 +9)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +9) && (DrawY<= PipePositionY3 + 90 +12)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +9) && (DrawY<= PipePositionY3 + 90 +12)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +12) && (DrawY<= PipePositionY3 + 90 +15)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +12) && (DrawY<= PipePositionY3 + 90 +15)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +15) && (DrawY<= PipePositionY3 + 90 +18)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +15) && (DrawY<= PipePositionY3 + 90 +18)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +18) && (DrawY<= PipePositionY3 + 90 +21)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +18) && (DrawY<= PipePositionY3 + 90 +21)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +21) && (DrawY<= PipePositionY3 + 90 +24)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +21) && (DrawY<= PipePositionY3 + 90 +24)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +24) && (DrawY<= PipePositionY3 + 90 +27)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +24) && (DrawY<= PipePositionY3 + 90 +27)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +3) && (DrawY>= PipePositionY3 + 90 +27) && (DrawY<= PipePositionY3 + 90 +30)
||          (DrawX>=PipePositionX + 270 +87) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +27) && (DrawY<= PipePositionY3 + 90 +30)
||          (DrawX>=PipePositionX + 270 +0) && (DrawX<=PipePositionX + 270 +90) && (DrawY>= PipePositionY3 + 90 +30) && (DrawY<= PipePositionY3 + 90 +33);

PipesGreenBot3 <= (DrawX>=PipePositionX + 270 +3) && (DrawX<=PipePositionX + 270 +87) && (DrawY>= PipePositionY3 + 90 +3) && (DrawY<= PipePositionY3 + 90 +30);



PipesGreenBodyTop4 <= (DrawX>=PipePositionX + 540 +12) && (DrawX<=PipePositionX + 540 +78) && (DrawY>=0) && (DrawY<=PipePositionY4 - 90 );

PipesBlackBodyTop4 <= (DrawX>=PipePositionX + 540 +9) && (DrawX<=PipePositionX + 540 +12) && (DrawY>=0) && (DrawY<=PipePositionY4 - 90 )
|| (DrawX>=PipePositionX + 540 +78) && (DrawX<=PipePositionX + 540 +81) && (DrawY>=0) && (DrawY<=PipePositionY4 - 90 );

PipesBlackTop4 <= (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +0) && (DrawY<=PipePositionY4 - 90 +3)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +3) && (DrawY<=PipePositionY4 - 90 +6)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +3) && (DrawY<=PipePositionY4 - 90 +6)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +6) && (DrawY<=PipePositionY4 - 90 +9)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +6) && (DrawY<=PipePositionY4 - 90 +9)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +9) && (DrawY<=PipePositionY4 - 90 +12)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +9) && (DrawY<=PipePositionY4 - 90 +12)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +12) && (DrawY<=PipePositionY4 - 90 +15)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +12) && (DrawY<=PipePositionY4 - 90 +15)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +15) && (DrawY<=PipePositionY4 - 90 +18)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +15) && (DrawY<=PipePositionY4 - 90 +18)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +18) && (DrawY<=PipePositionY4 - 90 +21)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +18) && (DrawY<=PipePositionY4 - 90 +21)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +21) && (DrawY<=PipePositionY4 - 90 +24)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +21) && (DrawY<=PipePositionY4 - 90 +24)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +24) && (DrawY<=PipePositionY4 - 90 +27)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +24) && (DrawY<=PipePositionY4 - 90 +27)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>=PipePositionY4 - 90 +27) && (DrawY<=PipePositionY4 - 90 +30)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +27) && (DrawY<=PipePositionY4 - 90 +30)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +90) && (DrawY>=PipePositionY4 - 90 +30) && (DrawY<=PipePositionY4 - 90 +33);

PipesGreenTop4 <= (DrawX>=PipePositionX + 540 +3) && (DrawX<=PipePositionX + 540 +87) && (DrawY>=PipePositionY4 - 90 +3) && (DrawY<=PipePositionY4 - 90 +30);

//lower pipe
PipesGreenBodyBot4 <= (DrawX>=PipePositionX + 540 +12) && (DrawX<=PipePositionX + 540 +78) && (DrawY>= PipePositionY4 + 90 );

PipesBlackBodyBot4 <= (DrawX>=PipePositionX + 540 +9) && (DrawX<=PipePositionX + 540 +12) && (DrawY>= PipePositionY4 + 90 +33)
|| (DrawX>=PipePositionX + 540 +78) && (DrawX<=PipePositionX + 540 +81) && (DrawY>= PipePositionY4 + 90 +33);

PipesBlackBot4 <= (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +0) && (DrawY<= PipePositionY4 + 90 +3)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +3) && (DrawY<= PipePositionY4 + 90 +6)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +3) && (DrawY<= PipePositionY4 + 90 +6)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +6) && (DrawY<= PipePositionY4 + 90 +9)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +6) && (DrawY<= PipePositionY4 + 90 +9)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +9) && (DrawY<= PipePositionY4 + 90 +12)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +9) && (DrawY<= PipePositionY4 + 90 +12)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +12) && (DrawY<= PipePositionY4 + 90 +15)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +12) && (DrawY<= PipePositionY4 + 90 +15)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +15) && (DrawY<= PipePositionY4 + 90 +18)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +15) && (DrawY<= PipePositionY4 + 90 +18)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +18) && (DrawY<= PipePositionY4 + 90 +21)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +18) && (DrawY<= PipePositionY4 + 90 +21)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +21) && (DrawY<= PipePositionY4 + 90 +24)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +21) && (DrawY<= PipePositionY4 + 90 +24)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +24) && (DrawY<= PipePositionY4 + 90 +27)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +24) && (DrawY<= PipePositionY4 + 90 +27)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +3) && (DrawY>= PipePositionY4 + 90 +27) && (DrawY<= PipePositionY4 + 90 +30)
||          (DrawX>=PipePositionX + 540 +87) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +27) && (DrawY<= PipePositionY4 + 90 +30)
||          (DrawX>=PipePositionX + 540 +0) && (DrawX<=PipePositionX + 540 +90) && (DrawY>= PipePositionY4 + 90 +30) && (DrawY<= PipePositionY4 + 90 +33);

PipesGreenBot4 <= (DrawX>=PipePositionX + 540 +3) && (DrawX<=PipePositionX + 540 +87) && (DrawY>= PipePositionY4 + 90 +3) && (DrawY<= PipePositionY4 + 90 +30);


//fifth set of pipe 

PipesGreenBodyTop5 <= (DrawX>=PipePositionX - 540 +12) && (DrawX<=PipePositionX - 540 +78) && (DrawY>=0) && (DrawY<=PipePositionY5 - 90 );

PipesBlackBodyTop5 <= (DrawX>=PipePositionX - 540 +9) && (DrawX<=PipePositionX - 540 +12) && (DrawY>=0) && (DrawY<=PipePositionY5 - 90 )
|| (DrawX>=PipePositionX - 540 +78) && (DrawX<=PipePositionX - 540 +81) && (DrawY>=0) && (DrawY<=PipePositionY5 - 90 );

PipesBlackTop5 <= (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +0) && (DrawY<=PipePositionY5 - 90 +3)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +3) && (DrawY<=PipePositionY5 - 90 +6)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +3) && (DrawY<=PipePositionY5 - 90 +6)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +6) && (DrawY<=PipePositionY5 - 90 +9)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +6) && (DrawY<=PipePositionY5 - 90 +9)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +9) && (DrawY<=PipePositionY5 - 90 +12)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +9) && (DrawY<=PipePositionY5 - 90 +12)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +12) && (DrawY<=PipePositionY5 - 90 +15)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +12) && (DrawY<=PipePositionY5 - 90 +15)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +15) && (DrawY<=PipePositionY5 - 90 +18)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +15) && (DrawY<=PipePositionY5 - 90 +18)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +18) && (DrawY<=PipePositionY5 - 90 +21)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +18) && (DrawY<=PipePositionY5 - 90 +21)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +21) && (DrawY<=PipePositionY5 - 90 +24)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +21) && (DrawY<=PipePositionY5 - 90 +24)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +24) && (DrawY<=PipePositionY5 - 90 +27)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +24) && (DrawY<=PipePositionY5 - 90 +27)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>=PipePositionY5 - 90 +27) && (DrawY<=PipePositionY5 - 90 +30)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +27) && (DrawY<=PipePositionY5 - 90 +30)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +90) && (DrawY>=PipePositionY5 - 90 +30) && (DrawY<=PipePositionY5 - 90 +33);

PipesGreenTop5 <= (DrawX>=PipePositionX - 540 +3) && (DrawX<=PipePositionX - 540 +87) && (DrawY>=PipePositionY5 - 90 +3) && (DrawY<=PipePositionY5 - 90 +30);



//lower pipe 
PipesGreenBodyBot5 <= (DrawX>=PipePositionX - 540 +12) && (DrawX<=PipePositionX - 540 +78) && (DrawY>= PipePositionY5 + 90 );

PipesBlackBodyBot5 <= (DrawX>=PipePositionX - 540 +9) && (DrawX<=PipePositionX - 540 +12) && (DrawY>= PipePositionY5 + 90 +33)
|| (DrawX>=PipePositionX - 540 +78) && (DrawX<=PipePositionX - 540 +81) && (DrawY>= PipePositionY5 + 90 +33);

PipesBlackBot5 <= (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +0) && (DrawY<= PipePositionY5 + 90 +3)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +3) && (DrawY<= PipePositionY5 + 90 +6)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +3) && (DrawY<= PipePositionY5 + 90 +6)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +6) && (DrawY<= PipePositionY5 + 90 +9)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +6) && (DrawY<= PipePositionY5 + 90 +9)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +9) && (DrawY<= PipePositionY5 + 90 +12)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +9) && (DrawY<= PipePositionY5 + 90 +12)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +12) && (DrawY<= PipePositionY5 + 90 +15)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +12) && (DrawY<= PipePositionY5 + 90 +15)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +15) && (DrawY<= PipePositionY5 + 90 +18)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +15) && (DrawY<= PipePositionY5 + 90 +18)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +18) && (DrawY<= PipePositionY5 + 90 +21)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +18) && (DrawY<= PipePositionY5 + 90 +21)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +21) && (DrawY<= PipePositionY5 + 90 +24)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +21) && (DrawY<= PipePositionY5 + 90 +24)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +24) && (DrawY<= PipePositionY5 + 90 +27)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +24) && (DrawY<= PipePositionY5 + 90 +27)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +3) && (DrawY>= PipePositionY5 + 90 +27) && (DrawY<= PipePositionY5 + 90 +30)
||          (DrawX>=PipePositionX - 540 +87) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +27) && (DrawY<= PipePositionY5 + 90 +30)
||          (DrawX>=PipePositionX - 540 +0) && (DrawX<=PipePositionX - 540 +90) && (DrawY>= PipePositionY5 + 90 +30) && (DrawY<= PipePositionY5 + 90 +33);

PipesGreenBot5 <= (DrawX>=PipePositionX - 540 +3) && (DrawX<=PipePositionX - 540 +87) && (DrawY>= PipePositionY5 + 90 +3) && (DrawY<= PipePositionY5 + 90 +30);

Sky <= (DrawX>=0) && (DrawX<=640) && (DrawY>=0) && (DrawY<=428);
Dirt <= (DrawX>=0) && (DrawX<=640) && (DrawY>=429) && (DrawY<=430);
OnGrass <= (DrawY>=430 && DrawY<=450) && ((DrawX + (DrawY/2) + 3) %16 <= 8);
Grassland <= (DrawX>=0) && (DrawX<=640) && (DrawY>=430) && (DrawY<=450);
Ground <= (DrawX>=0) && (DrawX<=640) && (DrawY>=450) && (DrawY<=480);



BirdWhite <= 1'b0;


BirdYellow = 1'b0;

supermanBlack <= 
(DrawX>=BirdPositionX + 110) && (DrawX<=BirdPositionX + 120) && (DrawY>=BirdPositionY + 20) && (DrawY<=BirdPositionY + 30)
||
(DrawX>=BirdPositionX + 30) && (DrawX<=BirdPositionX +  50) && (DrawY>=BirdPositionY +  13) && 
(DrawY<=BirdPositionY + 20)
|| (DrawX>=BirdPositionX+ 30) && (DrawX<=BirdPositionX + 50) && (DrawY>=BirdPositionY + 30) && 
(DrawY<=BirdPositionY + 37)
;
supermanRed  <= 
(DrawX>=BirdPositionX + 50) && (DrawX<=BirdPositionX +  110) && (DrawY>=BirdPositionY + 10) && (DrawY<=BirdPositionY + 40)
;

supermanBlue <= 
 (DrawX>=BirdPositionX+90) && (DrawX<=BirdPositionX+130) && (DrawY>=BirdPositionY) && (DrawY<=BirdPositionY+7)
|| (DrawX>=BirdPositionX + 90) && (DrawX<=BirdPositionX+ 130) && (DrawY>=BirdPositionY+43) && (DrawY<=BirdPositionY+50)
;


helicopterBlack <= (DrawX>=BirdPositionX + 50) && (DrawX<=BirdPositionX +  130) && (DrawY>=BirdPositionY - 15) && (DrawY<=BirdPositionY - 10)
 || (DrawX>=BirdPositionX + 90) && (DrawX<=BirdPositionX + 100) && (DrawY>=BirdPositionY - 10) && (DrawY<=BirdPositionY)
 || (DrawX>=BirdPositionX+25) && (DrawX<=BirdPositionX+65) && (DrawY>=BirdPositionY + 5) && (DrawY<=BirdPositionY+10)
 || (DrawX>=BirdPositionX + 75) && (DrawX<=BirdPositionX+ 115) && (DrawY>=BirdPositionY+30) && (DrawY<=BirdPositionY+40)
 || (DrawX>=BirdPositionX+60) && (DrawX<=BirdPositionX+135) && (DrawY>=BirdPositionY+40) && (DrawY<=BirdPositionY+45)
 ;
helicopterRed <= 
(DrawX >= BirdPositionX+65 ) && (DrawX <= BirdPositionX + 110) && (DrawY >= BirdPositionY) && (DrawY <= BirdPositionY + 30)
|| (DrawX >= BirdPositionX + 110) && (DrawX <= BirdPositionX + 125) && (DrawY >= BirdPositionY + 15) && (DrawY <= BirdPositionY + 30)
;

helicopterBlue <= (DrawX >= BirdPositionX+10 ) && (DrawX <= BirdPositionX + 25) && (DrawY >= BirdPositionY) && (DrawY <= BirdPositionY + 15)
 || (DrawX >= BirdPositionX + 110) && (DrawX <= BirdPositionX + 125) && (DrawY >= BirdPositionY) && (DrawY <= BirdPositionY + 15);





//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//The second flappy bird
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BirdBlack2 <= (DrawX>=BirdPositionX+18) && (DrawX<=BirdPositionX+36) && (DrawY>=BirdPositionY2+0) && (DrawY<=BirdPositionY2+3)

||          (DrawX>=BirdPositionX+12) && (DrawX<=BirdPositionX+18) && (DrawY>=BirdPositionY2+3) && (DrawY<=BirdPositionY2+6)
||          (DrawX>=BirdPositionX+27) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+3) && (DrawY<=BirdPositionY2+6)
||          (DrawX>=BirdPositionX+36) && (DrawX<=BirdPositionX+39) && (DrawY>=BirdPositionY2+3) && (DrawY<=BirdPositionY2+6)

||  (DrawX>=BirdPositionX+9) && (DrawX<=BirdPositionX+12) && (DrawY>=BirdPositionY2+6) && (DrawY<=BirdPositionY2+9)
||  (DrawX>=BirdPositionX+24) && (DrawX<=BirdPositionX+27) && (DrawY>=BirdPositionY2+6) && (DrawY<=BirdPositionY2+9)
||  (DrawX>=BirdPositionX+39) && (DrawX<=BirdPositionX+42) && (DrawY>=BirdPositionY2+6) && (DrawY<=BirdPositionY2+9)

||  (DrawX>=BirdPositionX+6) && (DrawX<=BirdPositionX+9) && (DrawY>=BirdPositionY2+9) && (DrawY<=BirdPositionY2+12)
||  (DrawX>=BirdPositionX+24) && (DrawX<=BirdPositionX+27) && (DrawY>=BirdPositionY2+9) && (DrawY<=BirdPositionY2+12)
||  (DrawX>=BirdPositionX+30) && (DrawX<=BirdPositionX+39) && (DrawY>=BirdPositionY2+9) && (DrawY<=BirdPositionY2+12)
||  (DrawX>=BirdPositionX+42) && (DrawX<=BirdPositionX+45) && (DrawY>=BirdPositionY2+9) && (DrawY<=BirdPositionY2+12)

||  (DrawX>=BirdPositionX+3) && (DrawX<=BirdPositionX+6) && (DrawY>=BirdPositionY2+12) && (DrawY<=BirdPositionY2+15)
||  (DrawX>=BirdPositionX+24) && (DrawX<=BirdPositionX+27) && (DrawY>=BirdPositionY2+12) && (DrawY<=BirdPositionY2+15)
||  (DrawX>=BirdPositionX+42) && (DrawX<=BirdPositionX+45) && (DrawY>=BirdPositionY2+12) && (DrawY<=BirdPositionY2+15)

||  (DrawX>=BirdPositionX+3) && (DrawX<=BirdPositionX+6) && (DrawY>=BirdPositionY2+15) && (DrawY<=BirdPositionY2+18)
||  (DrawX>=BirdPositionX+27) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+15) && (DrawY<=BirdPositionY2+18)
||  (DrawX>=BirdPositionX+42) && (DrawX<=BirdPositionX+45) && (DrawY>=BirdPositionY2+15) && (DrawY<=BirdPositionY2+18)

||  (DrawX>=BirdPositionX+3) && (DrawX<=BirdPositionX+18) && (DrawY>=BirdPositionY2+18) && (DrawY<=BirdPositionY2+21)
||  (DrawX>=BirdPositionX+30) && (DrawX<=BirdPositionX+48) && (DrawY>=BirdPositionY2+18) && (DrawY<=BirdPositionY2+21)

||  (DrawX>=BirdPositionX+0) && (DrawX<=BirdPositionX+3) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)
||  (DrawX>=BirdPositionX+18) && (DrawX<=BirdPositionX+21) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)
||  (DrawX>=BirdPositionX+27) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)
||  (DrawX>=BirdPositionX+48) && (DrawX<=BirdPositionX+51) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)

||  (DrawX>=BirdPositionX+0) && (DrawX<=BirdPositionX+3) && (DrawY>=BirdPositionY2+24) && (DrawY<=BirdPositionY2+27)
||  (DrawX>=BirdPositionX+15) && (DrawX<=BirdPositionX+18) && (DrawY>=BirdPositionY2+24) && (DrawY<=BirdPositionY2+27)
||  (DrawX>=BirdPositionX+24) && (DrawX<=BirdPositionX+27) && (DrawY>=BirdPositionY2+24) && (DrawY<=BirdPositionY2+27)
||  (DrawX>=BirdPositionX+30) && (DrawX<=BirdPositionX+48) && (DrawY>=BirdPositionY2+24) && (DrawY<=BirdPositionY2+27)

||  (DrawX>=BirdPositionX+0) && (DrawX<=BirdPositionX+3) && (DrawY>=BirdPositionY2+27) && (DrawY<=BirdPositionY2+30)
||  (DrawX>=BirdPositionX+12) && (DrawX<=BirdPositionX+15) && (DrawY>=BirdPositionY2+27) && (DrawY<=BirdPositionY2+30)
||  (DrawX>=BirdPositionX+27) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+27) && (DrawY<=BirdPositionY2+30)
||  (DrawX>=BirdPositionX+45) && (DrawX<=BirdPositionX+48) && (DrawY>=BirdPositionY2+27) && (DrawY<=BirdPositionY2+30)

||  (DrawX>=BirdPositionX+3) && (DrawX<=BirdPositionX+15) && (DrawY>=BirdPositionY2+30) && (DrawY<=BirdPositionY2+33)
||  (DrawX>=BirdPositionX+30) && (DrawX<=BirdPositionX+45) && (DrawY>=BirdPositionY2+30) && (DrawY<=BirdPositionY2+33)

||  (DrawX>=BirdPositionX+15) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+33) && (DrawY<=BirdPositionY2+36);

BirdWhite2 <= (DrawX>=BirdPositionX+18) && (DrawX<=BirdPositionX+27) && (DrawY>=BirdPositionY2+3) && (DrawY<=BirdPositionY2+6)
||          (DrawX>=BirdPositionX+30) && (DrawX<=BirdPositionX+36) && (DrawY>=BirdPositionY2+3) && (DrawY<=BirdPositionY2+6)

||          (DrawX>=BirdPositionX+12) && (DrawX<=BirdPositionX+18) && (DrawY>=BirdPositionY2+6) && (DrawY<=BirdPositionY2+9)
||          (DrawX>=BirdPositionX+27) && (DrawX<=BirdPositionX+39) && (DrawY>=BirdPositionY2+6) && (DrawY<=BirdPositionY2+9)

||          (DrawX>=BirdPositionX+27) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+9) && (DrawY<=BirdPositionY2+12)
||          (DrawX>=BirdPositionX+39) && (DrawX<=BirdPositionX+42) && (DrawY>=BirdPositionY2+9) && (DrawY<=BirdPositionY2+12)

||          (DrawX>=BirdPositionX+27) && (DrawX<=BirdPositionX+42) && (DrawY>=BirdPositionY2+12) && (DrawY<=BirdPositionY2+15)

||          (DrawX>=BirdPositionX+30) && (DrawX<=BirdPositionX+42) && (DrawY>=BirdPositionY2+15) && (DrawY<=BirdPositionY2+18)

||          (DrawX>=BirdPositionX+6) && (DrawX<=BirdPositionX+15) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)

||          (DrawX>=BirdPositionX+3) && (DrawX<=BirdPositionX+15) && (DrawY>=BirdPositionY2+24) && (DrawY<=BirdPositionY2+27)

||          (DrawX>=BirdPositionX+3) && (DrawX<=BirdPositionX+9) && (DrawY>=BirdPositionY2+27) && (DrawY<=BirdPositionY2+30);

BirdYellow2 <= (DrawX>=BirdPositionX+18) && (DrawX<=BirdPositionX+24) && (DrawY>=BirdPositionY2+6) && (DrawY<=BirdPositionY2+9)

||          (DrawX>=BirdPositionX+9) && (DrawX<=BirdPositionX+24) && (DrawY>=BirdPositionY2+9) && (DrawY<=BirdPositionY2+12)

||          (DrawX>=BirdPositionX+6) && (DrawX<=BirdPositionX+24) && (DrawY>=BirdPositionY2+12) && (DrawY<=BirdPositionY2+15)

||          (DrawX>=BirdPositionX+6) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+15) && (DrawY<=BirdPositionY2+18)

||          (DrawX>=BirdPositionX+18) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+18) && (DrawY<=BirdPositionY2+21)

||          (DrawX>=BirdPositionX+3) && (DrawX<=BirdPositionX+6) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)
||          (DrawX>=BirdPositionX+15) && (DrawX<=BirdPositionX+18) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)
||          (DrawX>=BirdPositionX+21) && (DrawX<=BirdPositionX+27) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)

||          (DrawX>=BirdPositionX+18) && (DrawX<=BirdPositionX+24) && (DrawY>=BirdPositionY2+24) && (DrawY<=BirdPositionY2+27)

||          (DrawX>=BirdPositionX+9) && (DrawX<=BirdPositionX+12) && (DrawY>=BirdPositionY2+27) && (DrawY<=BirdPositionY2+30)
||          (DrawX>=BirdPositionX+15) && (DrawX<=BirdPositionX+27) && (DrawY>=BirdPositionY2+27) && (DrawY<=BirdPositionY2+30)

||          (DrawX>=BirdPositionX+15) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+30) && (DrawY<=BirdPositionY2+33);

BirdRed2 <= (DrawX>=BirdPositionX+30) && (DrawX<=BirdPositionX+48) && (DrawY>=BirdPositionY2+21) && (DrawY<=BirdPositionY2+24)

||          (DrawX>=BirdPositionX+27) && (DrawX<=BirdPositionX+30) && (DrawY>=BirdPositionY2+24) && (DrawY<=BirdPositionY2+27)

||          (DrawX>=BirdPositionX+30) && (DrawX<=BirdPositionX+45) && (DrawY>=BirdPositionY2+27) && (DrawY<=BirdPositionY2+30);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////Draw Text
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

TextWhite <= 1'b0;



TextBlack <= 1'b0;


TextUp <= 1'b0;

TextDown <= 1'b0;
///////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////Draw Digits for the scecond player
///////////////////////////////////////////////////////////////////////////////////////////////////////////

case (first2)
0 : begin

DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);

DigitWhite2P <=  (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||      (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)

||      (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);

end
1 : begin

DigitBlack2P <= (DrawX>=DigitPositionX2+3+2*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2+3+2*3) && (DrawX<=DigitPositionX2+3+3*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+7*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2+3+2*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+7*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2+3+3*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+7*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2+3+3*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);

DigitWhite2P <=  (DrawX>=DigitPositionX2+3+3*3) && (DrawX<=DigitPositionX2+3+7*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||      (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+7*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+13*3);

end
2 : begin
DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite2P <= (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
3 : begin
DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite2P <= (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);

////////////////////////////////////
end
4 : begin
DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+6*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)

||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite2P <= (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+6*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3);

////////////////////////////////////////
end
5 : begin
DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2P <= (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
6 : begin
DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2P <= (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
7 : begin
DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||      (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2P <= (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+13*3);
end
8 : begin
DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2P <= (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
9 : begin
DigitBlack2P <= (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+8*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2+3+0*3) && (DrawX<=DigitPositionX2+3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2P <= (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2+3+5*3) && (DrawX<=DigitPositionX2+3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+1*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2+3+4*3) && (DrawX<=DigitPositionX2+3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3);

end
endcase

case (second2)
0 : begin

DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);

DigitWhite2nd2P <=  (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||      (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)

||      (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);

end
1 : begin

DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+2*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 30 +3+2*3) && (DrawX<=DigitPositionX2 - 30 +3+3*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+7*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 30 +3+2*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+7*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 30 +3+3*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+7*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 30 +3+3*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);

DigitWhite2nd2P <=  (DrawX>=DigitPositionX2 - 30 +3+3*3) && (DrawX<=DigitPositionX2 - 30 +3+7*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||      (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+7*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+13*3);

end
2 : begin
DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
3 : begin
DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);

////////////////////////////////////
end
4 : begin
DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+6*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)

||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+6*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3);

////////////////////////////////////////
end
5 : begin
DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
6 : begin
DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
7 : begin
DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||      (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+13*3);
end
8 : begin
DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
9 : begin
DigitBlack2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+8*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 30 +3+0*3) && (DrawX<=DigitPositionX2 - 30 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite2nd2P <= (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 30 +3+5*3) && (DrawX<=DigitPositionX2 - 30 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+1*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 30 +3+4*3) && (DrawX<=DigitPositionX2 - 30 +3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3);

end
endcase

case (third2)
0 : begin

DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);

DigitWhite3rd2P <=  (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||      (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+10*3)

||      (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);

end
1 : begin

DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+2*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 60 +3+2*3) && (DrawX<=DigitPositionX2 - 60 +3+3*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+7*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 60 +3+2*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+7*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 60 +3+3*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+7*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 60 +3+3*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);

DigitWhite3rd2P <=  (DrawX>=DigitPositionX2 - 60 +3+3*3) && (DrawX<=DigitPositionX2 - 60 +3+7*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||      (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+7*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+13*3);

end
2 : begin
DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
3 : begin
DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)

||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)

||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);

////////////////////////////////////
end
4 : begin
DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+6*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)

||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)

||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)

||      (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);


DigitWhite3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+6*3) && (DrawY<=DigitPositionY2+9*3)

||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3);

////////////////////////////////////////
end
5 : begin
DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
6 : begin
DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
7 : begin
DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||      (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+13*3);
end
8 : begin
DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3);
end
9 : begin
DigitBlack3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+0*3) && (DrawY<=DigitPositionY2+1*3)
||          (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+1*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+8*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+4*3) && (DrawY<=DigitPositionY2+5*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+9*3) && (DrawY<=DigitPositionY2+10*3)
||      (DrawX>=DigitPositionX2 - 60 +3+0*3) && (DrawX<=DigitPositionX2 - 60 +3+9*3) && (DrawY>=DigitPositionY2+13*3) && (DrawY<=DigitPositionY2+14*3);
DigitWhite3rd2P <= (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+4*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+9*3)
||          (DrawX>=DigitPositionX2 - 60 +3+5*3) && (DrawX<=DigitPositionX2 - 60 +3+8*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+1*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+10*3) && (DrawY<=DigitPositionY2+13*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+1*3) && (DrawY<=DigitPositionY2+4*3)
||          (DrawX>=DigitPositionX2 - 60 +3+4*3) && (DrawX<=DigitPositionX2 - 60 +3+5*3) && (DrawY>=DigitPositionY2+5*3) && (DrawY<=DigitPositionY2+9*3);

end
endcase

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////Draw Digits for the first player
///////////////////////////////////////////////////////////////////////////////////////////////////////////

case (first)
0 : begin

DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);

DigitWhite <=  (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||      (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)

||      (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);

end
1 : begin

DigitBlack <= (DrawX>=DigitPositionX+3+2*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX+3+2*3) && (DrawX<=DigitPositionX+3+3*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+7*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX+3+2*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+7*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX+3+3*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+7*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX+3+3*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);

DigitWhite <=  (DrawX>=DigitPositionX+3+3*3) && (DrawX<=DigitPositionX+3+7*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||      (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+7*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+13*3);

end
2 : begin
DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite <= (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
3 : begin
DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite <= (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);

////////////////////////////////////
end
4 : begin
DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+6*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)

||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite <= (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+6*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3);

////////////////////////////////////////
end
5 : begin
DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite <= (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
6 : begin
DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite <= (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
7 : begin
DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||      (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite <= (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+13*3);
end
8 : begin
DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite <= (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
9 : begin
DigitBlack <= (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+8*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX+3+0*3) && (DrawX<=DigitPositionX+3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite <= (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX+3+5*3) && (DrawX<=DigitPositionX+3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+1*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX+3+4*3) && (DrawX<=DigitPositionX+3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3);

end
endcase

case (second)
0 : begin

DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);

DigitWhite2nd <=  (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||      (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)

||      (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);

end
1 : begin

DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+2*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 30 +3+2*3) && (DrawX<=DigitPositionX - 30 +3+3*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+7*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 30 +3+2*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+7*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 30 +3+3*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+7*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 30 +3+3*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);

DigitWhite2nd <=  (DrawX>=DigitPositionX - 30 +3+3*3) && (DrawX<=DigitPositionX - 30 +3+7*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||      (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+7*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+13*3);

end
2 : begin
DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite2nd <= (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
3 : begin
DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite2nd <= (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);

////////////////////////////////////
end
4 : begin
DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+6*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)

||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite2nd <= (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+6*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3);

////////////////////////////////////////
end
5 : begin
DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite2nd <= (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
6 : begin
DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite2nd <= (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
7 : begin
DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||      (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite2nd <= (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+13*3);
end
8 : begin
DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite2nd <= (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
9 : begin
DigitBlack2nd <= (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+8*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 30 +3+0*3) && (DrawX<=DigitPositionX - 30 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite2nd <= (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 30 +3+5*3) && (DrawX<=DigitPositionX - 30 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+1*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 30 +3+4*3) && (DrawX<=DigitPositionX - 30 +3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3);

end
endcase

case (third)
0 : begin

DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);

DigitWhite3rd <=  (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||      (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+10*3)

||      (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);

end
1 : begin

DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+2*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 60 +3+2*3) && (DrawX<=DigitPositionX - 60 +3+3*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+7*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 60 +3+2*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+7*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 60 +3+3*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+7*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 60 +3+3*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);

DigitWhite3rd <=  (DrawX>=DigitPositionX - 60 +3+3*3) && (DrawX<=DigitPositionX - 60 +3+7*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||      (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+7*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+13*3);

end
2 : begin
DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite3rd <= (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
3 : begin
DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite3rd <= (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)

||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)

||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);

////////////////////////////////////
end
4 : begin
DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+6*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)

||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)

||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)

||      (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);


DigitWhite3rd <= (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+6*3) && (DrawY<=DigitPositionY+9*3)

||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3);

////////////////////////////////////////
end
5 : begin
DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite3rd <= (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
6 : begin
DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite3rd <= (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
7 : begin
DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||      (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite3rd <= (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+13*3);
end
8 : begin
DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite3rd <= (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3);
end
9 : begin
DigitBlack3rd <= (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+0*3) && (DrawY<=DigitPositionY+1*3)
||          (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+1*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+8*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+4*3) && (DrawY<=DigitPositionY+5*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+9*3) && (DrawY<=DigitPositionY+10*3)
||      (DrawX>=DigitPositionX - 60 +3+0*3) && (DrawX<=DigitPositionX - 60 +3+9*3) && (DrawY>=DigitPositionY+13*3) && (DrawY<=DigitPositionY+14*3);
DigitWhite3rd <= (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+4*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+9*3)
||          (DrawX>=DigitPositionX - 60 +3+5*3) && (DrawX<=DigitPositionX - 60 +3+8*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+1*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+10*3) && (DrawY<=DigitPositionY+13*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+1*3) && (DrawY<=DigitPositionY+4*3)
||          (DrawX>=DigitPositionX - 60 +3+4*3) && (DrawX<=DigitPositionX - 60 +3+5*3) && (DrawY>=DigitPositionY+5*3) && (DrawY<=DigitPositionY+9*3);

end
endcase

end

    always_comb
    begin:green_on_proc
        green_on = 1'b0;
        black_on = 1'b0;
        sky_on = 1'b0;
        grassland_on = 1'b0;
        ground_on = 1'b0;
        dirt_on = 1'b0;
        grass_on = 1'b0;
        bird_red = 1'b0;
        bird_yellow = 1'b0;
        bird_black = 1'b0;
        bird_white = 1'b0;
        bird_light_green = 1'b0;
		  bird_blue = 1'b0;
		  
		  qing = 1'b0;
		  orange = 1'b0;
		  levelRed = 1'b0;
/*
 * status:
 * 0: game on, single player
 * 1: not start
 * 3: two players
 */
        if (BirdWhite || ((TextWhite || TextUp || TextDown) && status == 1) 
            || ((DigitWhite || DigitWhite2nd || DigitWhite3rd))
              || (BirdWhite2 && status == 3)
            )
            bird_white = 1'b1;
			//blue 
        else if (supermanBlue && level == 3)
            bird_blue = 1'b1;
			else if (helicopterBlue && (level == 1 || level == 2))
				bird_blue = 1'b1;
			//black 
        else if 
            ((BirdBlack2 && status == 3)
            || (TextBlack && status == 1) 
      || ((DigitBlack || DigitBlack2nd || DigitBlack3rd))
      || ((DigitBlack2P || DigitBlack2nd2P || DigitBlack3rd2P) && (status == 3)))
            bird_black = 1'b1;
		  else if (supermanBlack && level == 3) 
				bird_black = 1'b1;
		  else if (helicopterBlack && (level == 1 || level == 2))
				bird_black = 1'b1;
			//red 
        else if (BirdRed2 && status == 3)
            bird_red = 1'b1;
			else if (supermanRed && level == 3)
				bird_red = 1'b1;
			else if (helicopterRed && (level == 1 || level == 2))
				bird_red = 1'b1;
				
          else if (BirdYellow2 && status == 3)
            bird_light_green = 1'b1;
        else if (BirdYellow || ((DigitWhite2P || DigitWhite2nd2P || DigitWhite3rd2P) && (status == 3)))
            bird_yellow = 1'b1;
        //else if ((status == 0 || status == 3))
            //green_on = 1'b1; 
		  else if ((status == 0 || status == 3) && ( PipesGreenTop || PipesGreenBodyTop || PipesGreenBot || PipesGreenBodyBot || PipesGreenTop2 || PipesGreenBodyTop2 || PipesGreenBot2 || PipesGreenBodyBot2
            || PipesGreenTop3 || PipesGreenBodyTop3 || PipesGreenBot3 || PipesGreenBodyBot3 || PipesGreenTop4 || PipesGreenBodyTop4 || PipesGreenBot4 || PipesGreenBodyBot4
            || PipesGreenTop5 || PipesGreenBodyTop5 || PipesGreenBot5 || PipesGreenBodyBot5 ) && level == 1)
				  qing = 1'b1;
		   else if ((status == 0 || status == 3) && ( PipesGreenTop || PipesGreenBodyTop || PipesGreenBot || PipesGreenBodyBot || PipesGreenTop2 || PipesGreenBodyTop2 || PipesGreenBot2 || PipesGreenBodyBot2
             || PipesGreenTop3 || PipesGreenBodyTop3 || PipesGreenBot3 || PipesGreenBodyBot3 || PipesGreenTop4 || PipesGreenBodyTop4 || PipesGreenBot4 || PipesGreenBodyBot4
             || PipesGreenTop5 || PipesGreenBodyTop5 || PipesGreenBot5 || PipesGreenBodyBot5 ) && level == 2)
				 	orange = 1'b1;
		   else if ((status == 0 || status == 3) && ( PipesGreenTop || PipesGreenBodyTop || PipesGreenBot || PipesGreenBodyBot || PipesGreenTop2 || PipesGreenBodyTop2 || PipesGreenBot2 || PipesGreenBodyBot2
             || PipesGreenTop3 || PipesGreenBodyTop3 || PipesGreenBot3 || PipesGreenBodyBot3 || PipesGreenTop4 || PipesGreenBodyTop4 || PipesGreenBot4 || PipesGreenBodyBot4
             || PipesGreenTop5 || PipesGreenBodyTop5 || PipesGreenBot5 || PipesGreenBodyBot5 ) && level == 3)
				 	 levelRed = 1'b1;
        else if ((status == 0 || status == 3) && (PipesBlackTop || PipesBlackBot || PipesBlackBodyTop  || PipesBlackBodyBot || PipesBlackTop2 || PipesBlackBot2 || PipesBlackBodyTop2 || PipesBlackBodyBot2
            || PipesBlackTop3 || PipesBlackBot3 || PipesBlackBodyTop3 || PipesBlackBodyBot3 || PipesBlackTop4 || PipesBlackBot4 || PipesBlackBodyTop4 || PipesBlackBodyBot4
            || PipesBlackTop5 || PipesBlackBot5 || PipesBlackBodyTop5 || PipesBlackBodyBot5))
            black_on = 1'b1;
        else if (Sky)
            //sky_on = 1'b1;
        ;
        else if (Dirt)
            //dirt_on = 1'b1;
        ;
        else if (Ground)
            //ground_on = 1'b1;
        ;
        else if (grassland_on)
            grassland_on = 1'b1;
        else if (OnGrass)
            //grass_on = 1'b1;
        ;
     end 
       
    always_comb
    begin:RGB_Display
        if ((green_on == 1'b1)) 
        begin 
            Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
        end 
		 else if (qing == 1'b1)
		 begin 
				Red = 8'h00;
				Green = 8'hFF;
				Blue  = 8'hFF;
			end 
			else if (orange == 1'b1) 
			begin 
				Red = 8'hFF;
				Green = 8'h99;
				Blue = 8'h33;
			end 
			else if (levelRed == 1'b1)
			begin 
				Red = 8'hFF;
				Green = 8'h00;
				Blue = 8'h00;
			end 
        else if (bird_light_green == 1'b1)
        begin
          Red = 8'h99;
          Green = 8'hFF;
          Blue = 8'h33;
        end 
        else if (black_on == 1'b1)
        begin
            Red = 8'h00;
            Green = 8'h00;
            Blue = 8'h00;
        end
        else if (sky_on)
        begin 
            Red = 8'h00; 
            Green = 8'h99;
            Blue = 8'hff;
        end      
        else if (dirt_on)
        begin
            Red = 8'h99;
            Green = 8'h66;
            Blue = 8'h00;
        end
        else if (ground_on)
        begin
            Red = 8'h66;
            Green = 8'h66;
            Blue = 8'h33;
        end
        else if (grassland_on)
        begin
            Red = 8'h00;
            Green = 8'h99;
            Blue = 8'h00;
        end
        else if (grass_on)
        begin
            Red = 8'hCC;
            Green = 8'hFF;
            Blue = 8'h66;
        end
        else if (bird_black)
        begin
            Red = 8'h00;
            Green = 8'h00;
            Blue = 8'h00;
        end
        else if (bird_red)
        begin
            Red = 8'hFF;
            Green = 8'h00;
            Blue = 8'h00;
        end
        else if (bird_yellow)
        begin
            Red = 8'hFF;
            Green = 8'hF2;
            Blue = 8'h00;
        end
        else if (bird_white)
        begin
            Red = 8'hFF;
            Green = 8'hFF;
            Blue = 8'hFF;
        end
       else if (bird_blue)
         begin 
             Red = 8'h00;
             Green = 8'hBF;
             Blue = 8'hFF;
       end
        else
        begin
            Red = 8'hff;
            Green = 8'hff;
            Blue = 8'h00;
        end
    end 
    
endmodule
