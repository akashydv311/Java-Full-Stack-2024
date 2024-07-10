package patternprograms;

public class StarPattern {
	
	public static void startPattern1() {
		int row=4;
		int col=4;
		for(int i=0; i<row; i++) {
			for(int j=0; j<col; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
	
	public static void main(String[] args) {
		startPattern1();
	}
}
