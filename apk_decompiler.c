#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	int i, j, last_back_slash_position;

	//	FILE *fp;

	char apk_name_with_path_and_extension[1000],
		apk_name_with_path[1000],
		apk_name[1000],

		command2[1000] = "apktool d \"",
		command2_last[100] = "\"",

		command3[1000] = "WinRAR x -y \"",
		command3_last[100] = "\" winrar-apk\\",

		command6[1000] = "xcopy /y \"",
		command6_middle[100] = "\" \"",
		command6_last[100] = "\\other\\\"",

		command7[1000] = "WinRAR x -y classes-dex2jar.jar \"",
		command7_last[100] = "\\class\\\"",

		command8[100] = "xcopy /y classes-dex2jar.jar \"",
		command8_last[100] = "\\other\\\"";

	if (argc != 2)
	{
		printf("You forgot to type your apk file name, please correct it.");
		exit(0);
	}

	// printf("argv[1] : %s", argv[1]);
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

	for (i = 0; i < (strlen(apk_name_with_path_and_extension)) - 4; i++)
	{
		apk_name_with_path[i] = apk_name_with_path_and_extension[i];
		//printf("\n%c\n",apk_name_with_path_and_extension[i]);
	}

	apk_name_with_path[i] = '\0';

	//	printf("apk_name_with_path : %s",apk_name_with_path);
	//	system("pause");

	strcat(command2, apk_name_with_path_and_extension);
	strcat(command2, command2_last);

	// printf("%s", command2);
	//	system("pause");

	strcat(command3, apk_name_with_path_and_extension);
	strcat(command3, command3_last);

	// printf("%s", command3);
	//	system("pause");

	i = 0;
	while (apk_name_with_path[i] != '\0')
	{
		if (apk_name_with_path[i] == '\\')
		{
			last_back_slash_position = i;
		}
		i++;
	}

	// printf("%d", last_back_slash_position);
	// system("pause");

	i = last_back_slash_position + 1;
	j = 0;
	while (apk_name_with_path[i] != '\0')
	{
		apk_name[j] = apk_name_with_path[i];
		i++;
		j++;
	}

	apk_name[j] = '\0';

	// printf("%s", apk_name);
	// system("pause");

	strcat(command6, apk_name_with_path_and_extension);
	strcat(command6, command6_middle);
	strcat(command6, apk_name);
	strcat(command6, command6_last);

	// printf("%s", command6);
	//	system("pause");

	//	fp = fopen("TEST.txt", "w");
	//	fputs(command2, fp);
	//	fputs("\n", fp);
	//	fputs(command3, fp);
	//	fputs("\n", fp);
	//	fputs("d2j-dex2jar --force winrar-apk\\classes.dex", fp);
	//	fputs("\n", fp);
	//	fputs(command6, fp);
	//	fputs("\n", fp);
	//	fputs("del classes-dex2jar.jar", fp);
	//	fputs("\n", fp);
	//	fputs("rmdir /s /q winrar-apk", fp);
	//	fputs("\n", fp);

	system("CLS");
	system(command2);
	system(command3);
	system("d2j-dex2jar --force winrar-apk\\classes.dex");
	strcat(strcat(command7, apk_name), command7_last);
	// printf("%s", command7);
	system(command7);
	strcat(strcat(command8, apk_name), command8_last);
	// printf("%s", command8);
	system(command8);
	system(command6);
	system("del classes-dex2jar.jar");
	system("rmdir /s /q winrar-apk");
}
