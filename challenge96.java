// http://www.reddit.com/r/dailyprogrammer/comments/zfe7v/9052012_challenge_96_easy_controller_chains/
public class challenge96 {

	static int maxPlayers(int D) {
		final int CONTROLLER_COST = 20;
		final int MULTITAP_COST = 12;
		int N = 1; // We start with 1 controller
		int multitaps = 0;
		while ( D >= 20 ) { // While we can afford controllers
			// If one more controller would be more than the ports we have
			if( N+1 > numberPorts(multitaps) ) {
				// Buy a multitap instead
				D-=MULTITAP_COST;
				multitaps++;
			} else {
				// Buy a controller
				D-=CONTROLLER_COST;
				N++;
			}
		}
		return N;
	}
	
	static int numberPorts( int multitaps ) {
		return 2 + (multitaps * 3);
	}
	
	public static void main(String[] args) {

		int[] dollar_amounts = {19, 20, 21, 80, 100, 150};
		for( int dollars : dollar_amounts) {
			System.out.println("Given " + dollars + " dollars, " + maxPlayers(dollars) + " players can play.");
		}
	}
}
