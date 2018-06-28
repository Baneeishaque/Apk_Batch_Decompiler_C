#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	int i;

	char apk_name_with_path_and_extension[1000],
		command2[1000] = "apktool d \"",
		command2_last[100] = "\"",
		command3[1000] = "WinRAR x -y \"",
		command3_last[100] = "\" winrar-apk\\",
		command6[1000] = "xcopy /y \"",
		command6_last[100] = "\" apk\\other\\";

	if (argc != 2)
	{
		printf("You forgot to type your apk file name, please correct it.");
		exit(0);
	}

	//	printf("argv[1] : %s",argv[1]);
	//	system("pause");

	i = 0;
	while (argv[1][i] != '\0')
	{
		if (argv[1][i] == '\\')
		{
			apk_name_with_path_and_extension[i] = '\\';
			i++;
		}
		apk_name_with_path_and_extension[i] = argv[1][i];
		i++;
	}

	apk_name_with_path_and_extension[i] = '\0';

	//	printf("apk_name_with_path_and_extension : %s",apk_name_with_path_and_extension);
	//	system("pause");

	strcat(command2, apk_name_with_path_and_extension);
	strcat(command2, command2_last);

	//	printf("%s",command2);
	//	system("pause");

	strcat(command3, apk_name_with_path_and_extension);
	strcat(command3, command3_last);

	//	printf("%s",command3);
	//	system("pause");

	strcat(command6, apk_name_with_path_and_extension);
	strcat(command6, command6_last);

	//	printf("%s",command6);
	//	system("pause");

	//	fp = fopen("TEST.txt", "w");
	//	fputs(command2, fp);
	//	fputs("\n", fp);
	//	fputs(command3, fp);
	//	fputs("\n", fp);
	//	fputs("d2j-dex2jar --force winrar-apk\\classes.dex", fp);
	//	fputs("\n", fp);
	//	fputs("WinRAR x -y classes-dex2jar.jar apk\\class\\", fp);
	//	fputs("\n", fp);
	//	fputs("xcopy /y classes-dex2jar.jar apk\\other\\", fp);
	//	fputs("\n", fp);
	//	fputs(command6, fp);
	//	fputs("\n", fp);
	//	fputs("del classes-dex2jar.jar", fp);
	//	fputs("\n", fp);
	//	fputs("rmdir /s /q winrar-apk", fp);
	//	fputs("\n", fp);
	//	fputs("rmdir /s /q apk", fp);
	//	fputs("\n", fp);

	system("CLS");
	// system(command1);
	system(command2);
	system(command3);
	system("d2j-dex2jar --force winrar-apk\\classes.dex");
	system("WinRAR x -y classes-dex2jar.jar apk\\class\\");
	system("xcopy /y classes-dex2jar.jar apk\\other\\");
	system(command6);
	system("del classes-dex2jar.jar");
	system("rmdir /s /q winrar-apk");
	// system("rmdir /s /q apk");
}
