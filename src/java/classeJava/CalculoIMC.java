package classeJava;

public class CalculoIMC {
    
    private float valorIMC;
    
    public float CalcularIMC(float peso, float altura) {
        valorIMC = (peso / (altura * altura));
        return valorIMC;
    }
    
    public String getSituacao(float valorIMC) {
        if (valorIMC <= 18.4)
            return "Abaixo do peso!!";
        else if ((valorIMC > 18) && (valorIMC <= 24.9))
            return "Com peso normal!!";
        else if ((valorIMC > 24.9) && (valorIMC <= 29.9))
            return "Com sobre-peso!!";
        else if ((valorIMC > 29.9) && (valorIMC <= 34.9))
            return "Com obesidade grau I!!";
        else if (valorIMC > 40)
            return "Com obesidade grau II!!";
        return "Fora da faixa!";
    }
}
