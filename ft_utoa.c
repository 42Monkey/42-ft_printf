#include "ft_printf.h"

char	*ft_utoa(unsigned int n)
{
	int				length;
	unsigned int	temp;
	char			*str;

	length = 1;
	temp = n;
	while (temp >= 10)
	{
		temp /= 10;
		length++;
	}
	str = (char *)malloc(length + 1);
	if (str == NULL)
		return (NULL);
	str[length] = '\0';
	while (length > 0)
	{
		str[--length] = '0' + (n % 10);
		n /= 10;
	}
	return (str);
}
