#include<stdio.h>
//#include<fileio.h>
#include<syslog.h>

#define REQ_ARG	(2)

int main(int argc, char* argv[])
{

	//writefile
	//writestr
	const char *writefile = argv[1];
	const char *writestr = argv[2];
	int strsize = 1, sizefw = 0;

	if(    ((argc-1) < REQ_ARG)
		|| ((argc-1) > REQ_ARG) )
	{
		// log the status
		openlog(NULL,0,LOG_USER);
		syslog(LOG_ERR,"Invalid Number of arguments: %d\n", (argc-1));
		//exit();
		return(1);
	}

	for(int i=0; writestr[i]!='\0';i++)
	{
		strsize++;
	}

	FILE *fp = fopen(writefile, "w");

	if(fp == NULL)
	{
		// log the status
		openlog(NULL,0,LOG_USER);
		syslog(LOG_ERR,"Could not open file\n");
		//exit();
		//fclose(fp);
		return(1);
	}
	
	sizefw = fwrite(writestr, 1, strsize, fp);
	
	if (strsize != sizefw)
	{
		openlog(NULL,0,LOG_USER);
		syslog(LOG_ERR,"Could not able to write all the characters to file\n");
	}
	else
	{
		openlog(NULL,0,LOG_USER);
		syslog(LOG_DEBUG,"Writing %s to %s\n",writestr,writefile);
	}

	fclose(fp);

	return(0);
}
