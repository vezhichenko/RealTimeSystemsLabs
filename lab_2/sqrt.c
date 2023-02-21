int SQRT(int num) {
    int count = 0;
    int sub = 1;
    while (num > 0) {
        num = num - sub;
        sub = sub + 2;
        count = count + 1;
    }
    return count;
}

int main() {
    return SQRT(64);
}