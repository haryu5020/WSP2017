package jspbook.ch04;

/**
 * File : Calc.java
 * Desc : 계산기 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
public class Calc{

	// 결과값 저장을 위한 변수
	int result =0;

	// 생성자에서 계산을 바로 수행함
	public Calc(int num1, int num2, String op) {
		if(op.equals("+")) {
			result = num1 + num2;
		}
		else if(op.equals("-")) {
			result = num1 - num2;
		}
		else if(op.equals("*")) {
			result = num1 * num2;
		}
		else if(op.equals("/")) {
			result = num1 / num2;
		}
	}

	// 계산 결과를 리턴하는 메서드
	public int getResult() {
		return result;
	}
}