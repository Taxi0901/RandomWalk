
float startPtX;
float startPtY;
float endPtX;
float endPtY;


//PVector startPt = (mouseX, mouseY)?

void setup(){  
  size(500, 600);
  background(255);
  
  startPtX = 0.5 *width;
  startPtY = 0.5 *height;
  
  noLoop(); // 一回だけ読み込んで終わる場合に使う　　（⇄loop();）
  
}


  //for (int i=0; i < 100, i = i+1){
  //  //directionを決める
  //  float diceValue = random(1, 4) 
  //  if()
  //ーー＞for文が先に来ると、draw関数を100回実行することになる。
    
  //direction
  //startPt
  //noLoop();   ->draw関数が一回だけ実行される
  
//
//int counterStep;
  
void draw(){
  for (int i=0; i < 100; i = i+1){
  
    float x = 0;
    float y = 0;
    
    //x方向とy方向を決める
    if(random(-1, 1)>0){
      //y = random(-1, 1); //y方向と歩幅
      y = random(-100, 100); 
    }
    else{
      //x = random(-1, 1); //x方向と歩幅
      x = random(-100, 100);
    }
    
    //スタート地点に歩幅を足してエンドポイントにする
    endPtX = startPtX + x;
    endPtY = startPtY + y;
    
    //もしも枠の外に出た場合、試行をもう一度繰り返す
    if(endPtX > width||endPtX < 0||endPtY > height||endPtY < 0){
      endPtX = startPtX - 1.2 * x;
      endPtY = startPtY - 1.2 * y;
    }
    
    
    //歩かせた奇跡を描く
    line(startPtX, startPtY, endPtX, endPtY);
    
    //スタートポイントをエンドポイントに置き換える。アップデートのため
    startPtX = endPtX;
    startPtY = endPtY;
    
    //line()
 
  }
}    

void keyPressed(){
  if(key == 'p'|| key == 'P'){
    save("img/test4.png");
  }
}      

//void mouseClicked(){
//  startPtX = mouseX;
//  startPtY = mouseY;
//} 
   
    
      
    
        
    //directionを決める
    //float diceValue = random(1, 4) 
    //if(){
    //if(counterStep <100){
    //  line(startPt.x, startPt.y, x1, y1)
    //counteStep++;
    //
    //
    //



//  if(random(-1, 1)>0){
//    int a=0;
//  }
//  else{
//    int b=0;
//  }
//}
  

//左右方向はy成分０、上下方向は
//

//key function : 
//random -> for random length and thickness, diection of lines
//line -> for drawing line
//for -> for repeat of line drawing, change of value of random
//if -> for line not going outside( -size? < total all point's x (or y) < size?  )
    //if outside -> skip or ... 

//value -> length, thickness, direction(angle?), 
//pointsVector? -> (x1, y1), (x2, y2), ...
//

//directionValue -> random (0, 1, 2, 3)   if~~ 
//thicknessValue -> random (1?-30?)
//lengthValue -> random (width*1/80?-width*1/8?)

//point+point+...   or  point+vector+vector+...



//About the algorithm:
//A random walk of 100 alternating horizontal and vertical lines within an enclosed space is shown. 
//The horizontal lines have a high percentage of a thicker width. 
//The two drawings above show a continuous path, where lines change direction when they hit an edge of the space.
//The other two drawings (in the catalog) show broken paths which restart at a different position when they hit an edge.


//This is homework. Important.
//rule:
//1.walkのdirectionは上下左右の４方向にランダムに進む　→　x方向、y方向の正負で表せば２方向で十分。単位ベクトルの回転で方向を決めるのもあり。
//ベクトルの進む速さはどちらかがVx = 0 or Vy = 0となる, Vx = random(-x, x) or Vy = random(-y, y)
//2.紙からoutする場合は、紙からでない方向に進むまで試行を繰り返す
//3.進むdistanceの範囲はwidthの1/50-1/10（できれば、左右はWidthの1/50-1/10、上下はheightの1/50-1/10）
//4.試行は100回繰り返す
//5.thiknessは左右への移動時のみ太い
//6.マウスでクリックした点から始める


//Image drawing by freehands 







//Open Saurce Software ; super collidar , sonic Pi  created by chambridge uni.
//Abeleton, LogicPro
//utada hikaruの音楽作成機材
//マイク（USB サウンドハウス、アマゾン）
//miro whitebordアプリ
