package olaswing;

import javax.swing.*;

public class OlaSwing {

    public static void main(String[] args) {
        JFrame janela = new JFrame("Minha primeira janela");
        
        janela.setSize(300, 200);
        janela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        janela.setLayout(null); // Layout livre
        
        // CRIAÇÃO DE BOTAO
        
        JButton botao = new JButton("Click aqui");
        botao.setBounds(80, 70, 130, 30); // POSIÇÃO X,Y LARGURA ALTURA
        
        // AÇÃO DO BOTAO
        
        botao.addActionListener(e ->{
            JOptionPane.showMessageDialog(null, "Olá mundo");
                    
        });
        // ADICIONAR O BOTAO JANELA
        janela.add(botao);
        // TORNA A JANELA VISIVEL
        janela.setVisible(true);
    }
    
}
