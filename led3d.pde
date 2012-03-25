int col_0 = 21; // Analog
int col_1 = 20;
int col_2 = 19;
int col_3 = 18;
int col_4 = 17;
int col_5 = 16;
int col_6 = 15;
int col_7 = 14;
int col_8 = 13;

/*
int gnd_bottom = 0; // Digital
 int gnd_middle = 1;
 int gnd_top = 2;
 */

int m_col[3][3] = {
  {
    col_0, col_1, col_2              }
  ,
  {
    col_3, col_4, col_5              }
  ,
  {
    col_6, col_7, col_8              }
};

void setup() {
  pinMode(col_0, OUTPUT);
  pinMode(col_1, OUTPUT);
  pinMode(col_2, OUTPUT);
  pinMode(col_3, OUTPUT);
  pinMode(col_4, OUTPUT);
  pinMode(col_5, OUTPUT);
  pinMode(col_6, OUTPUT);
  pinMode(col_7, OUTPUT);
  pinMode(col_8, OUTPUT);
  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
  pinMode(2, OUTPUT);
}

void loop() {
  lightLed(0, 0, 0);
  lightLed(1, 0, 0);
}

void lightLed(int x, int y, int z) {
  // Columns
  for (int i=0; i<3; i++){
    for (int j=0; j<3; j++){
      if(i==x && j==y){
        analogWrite(m_col[i][j], 255);
      } 
      else {
        analogWrite(m_col[i][j], 0);
      }
    }
  }
  // Floor
  for (int k=0; k<3; k++){
    if (k==z){
      digitalWrite(k, LOW);
    } 
    else {
      digitalWrite(k, HIGH);      
    }
  }
  delay(500);
}










