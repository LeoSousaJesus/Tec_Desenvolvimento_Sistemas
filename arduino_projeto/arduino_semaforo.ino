// Ligar Led

int LedVermelho = 5, LedVerde = 7, LedAmarelo = 3;


void setup(){
	pinMode(LedVermelho, OUTPUT);
  	pinMode(LedVerde, OUTPUT);
 	 pinMode(LedAmarelo, OUTPUT);
}
void loop(){
	digitalWrite(LedVermelho, HIGH);
  	delay(2000);
    digitalWrite(LedVermelho, LOW);
  	
  
  	digitalWrite(LedVerde, HIGH);
  	delay(5000);
    digitalWrite(LedVerde, LOW);
  	
  
  	digitalWrite(LedAmarelo, HIGH);
  	delay(3000);
    digitalWrite(LedAmarelo, LOW);
  	
}
