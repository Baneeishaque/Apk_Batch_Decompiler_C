#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	int i;

	char folder_name_with_path[1000], command1[1000] = "", command2[1000] = ""; 
	// command3[1000] = "";

	FILE *dir_out_file;
	char line_from_file[1000];
	char *line_from_file_status;

	//	FILE *test_file;
	//	test_file = fopen("test.txt", "w");

	if (argc != 2)
	{
		printf("You forgot to type your folder name, please correct it.");
		exit(0);
	}

	//printf("argv[1] : %s",argv[1]);
	//system("pause");

	i = 0;
	while (argv[1][i] != '\0')
	{
		if (argv[1][i] == '\\')
		{
			folder_name_with_path[i] = '\\';
			i++;
		}
		folder_name_with_path[i] = argv[1][i];
		i++;
	}

	folder_name_with_path[i] = '\0';

	strcat(command1, "dir \"");
	strcat(command1, folder_name_with_path);
	strcat(command1, "\"");
	strcat(command1, " /b >dir_out.txt");

	// printf("command1 : %s", command1);
	//	system("pause");

	//	fprintf(test_file,command1);
	//	fprintf(test_file,"\n");

	system(command1);

	dir_out_file = fopen("dir_out.txt", "r");
	line_from_file_status = fgets(line_from_file, 100, dir_out_file);

	while (line_from_file_status != NULL)
	{
		command2[0] = '\0';
		// printf("Command2 : %s\n",command2);

		strcat(command2, "apk_decompiler.exe \"");
		// printf("Command2 : %s\n",command2);

		strcat(command2, folder_name_with_path);
		// printf("Command2 : %s\n",command2);

		strcat(command2, "\\");
		// printf("Command2 : %s\n",command2);

		strcat(command2, line_from_file);
		// printf("Command2 : %s\n",command2);

		strcat(command2, "\"");
		// printf("Command2 : %s\n",command2);

		// command3[0] = '\0';
		// strcat(command3, "del \"");
		// strcat(command3, folder_name_with_path);
		// strcat(command3, "\\");
		// strcat(command3, line_from_file);
		// strcat(command3, "\"");

		// printf("%s", command3);

		//		fprintf(test_file,command3);
		//		fprintf(test_file,"\n");

		system(command2);
		// system(command3);

		line_from_file_status = fgets(line_from_file, 100, dir_out_file);

	} /* repeat until NULL */
	fclose(dir_out_file);

	system("del dir_out.txt");
}
