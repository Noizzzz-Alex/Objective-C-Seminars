//
//  main.m
//  Objective-C Seminars
//
//  Created by Александр Харлампов on 28.12.2023.
//

#import <Foundation/Foundation.h>

void firstEquation(void) {
    float a = 1;
    float b = -8;
    float c = 12;

    float discriminant = b * b - 4 * a * c;

    if (discriminant > 0) {
        float sqrtFirst = (-b + sqrt(discriminant)) / (2 * a);
        float sqrtSecond = (-b - sqrt(discriminant)) / (2 * a);
        printf("Корни уравнения x^2 – 8x + 12 = 0: %.2f, %.2f\n", sqrtFirst, sqrtSecond);
    } else if (discriminant == 0) {
        float sqrtOne = -b / (2 * a);
        printf("Корень уравнения x^2 – 8x + 12 = 0: %.2f\n", sqrtOne);
    } else {
        printf("Уравнение x^2 – 8x + 12 = 0 не имеет действительных корней\n");
    }
}

void secondEquation(void) {
    float a = 12;
    float b = -4;
    float c = 2;

    float discriminant = b * b - 4 * a * c;

    if (discriminant > 0) {
        float sqrtFirst = (-b + sqrt(discriminant)) / (2 * a);
        float sqrtSecond = (-b - sqrt(discriminant)) / (2 * a);
        printf("Корни уравнения 12x^2 – 4x + 2 = 0: %.2f, %.2f\n", sqrtFirst, sqrtSecond);
    } else if (discriminant == 0) {
        float sqrtOne = -b / (2 * a);
        printf("Корень уравнения 12x^2 – 4x + 2 = 0: %.2f\n", sqrtOne);
    } else {
        printf("Уравнение 12x^2 – 4x + 2 = 0 не имеет действительных корней\n");
    }
}

void thirdEquation(void) {
    float a = 1;
    float b = -100;
    float c = -2;

    float discriminant = b * b - 4 * a * c;

    if (discriminant > 0) {
        float sqrtFirst = (-b + sqrt(discriminant)) / (2 * a);
        float sqrtSecond = (-b - sqrt(discriminant)) / (2 * a);
        printf("Корни уравнения x^2 – 100x - 2 = 0: %.2f, %.2f\n", sqrtFirst, sqrtSecond);
    } else if (discriminant == 0) {
        float sqrtOne = -b / (2 * a);
        printf("Корень уравнения x^2 – 100x - 2 = 0: %.2f\n", sqrtOne);
    } else {
        printf("Уравнение x^2 – 100x - 2 = 0 не имеет действительных корней\n");
    }
}

void findMax(double numFirst, double numSecond, double numThird) {
    double max = numFirst;
    if (numSecond > max) {
        max = numSecond;
    }
    if (numThird > max) {
        max = numThird;
    }

    printf("Максимальное число: %.2f\n", max);
}

void enterNumbers(void) {
    NSLog(@"Enter First Number: ");
    double firstNumber;
    scanf("%lf", &firstNumber);
    NSLog(@"Enter Second Number: ");
    double secondNumber;
    scanf("%lf", &secondNumber);
    NSLog(@"Enter Third Number: ");
    double thirdNumber;
    scanf("%lf", &thirdNumber);
    findMax(firstNumber, secondNumber, thirdNumber);
}


int main(int argc, const char *argv[]) {
    @autoreleasepool {
//             1.Решить квадратные уравнения:
//             x^2 – 8x + 12 = 0,
        firstEquation();
//             12x^2 – 4x + 2 = 0,
        secondEquation();
//             x^2 – 100x - 2 = 0
        thirdEquation();
//             (заменять константы в коде).
//
//             2.Создать программу, которая находит большее число среди 3-х чисел.
        enterNumbers();
    }
    return 0;
}
