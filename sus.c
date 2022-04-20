#include <stdio.h>
float a_clac();
float a, b, top, bot, res;
int d;
char c;

int main() {
	while (1) {
	printf("Введите a, b, d: \n");
	scanf("%f%f%d", &a, &b, &d);
	a_clac();
	puts("____ASM____");
	printf("Числитель: %f\n", top);
	printf("Знаменатель: %f\n", bot);
	printf("Результат: %f\n", res);
	puts("\n____ПРОВЕРКА_НА_СИ____");
	top = 1 + 7 * b / 2;
	bot = a + b * 2 / d;
	res = top / bot;
	printf("Числитель: %f\n", top);
	printf("Знаменатель: %f\n", bot);
	printf("Результат: %f\n", res);
	puts("\nПродолжить? (y/n)\n");
	scanf("%s", &c);
	if (c != 'y')
		return 0;
}

}
