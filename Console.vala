class Main {
	public static int a = 0;
	public static string? t = null;
	public static async void count() {
		while(Main.a < 9999999) {
			i++;
			yield;
		}
	}
	public static int main(string[] args) {
		stdout.printf("Starting ...\n");
		count();
		while(t != "exit") {
			stdout.printf(Main.a.to_string() + "\n");
			t = stdin.read_line();
		}
		return 0;
	}
}
