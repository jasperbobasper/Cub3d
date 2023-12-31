/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_utils.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Loui :) <loflavel@students.42wolfsburg.de> +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/05 17:26:33 by jpfannku          #+#    #+#             */
/*   Updated: 2022/08/11 21:15:47 by Loui :)          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incl/raycast.h"

/* allocates n * size and initialises to 0 */
void	*ft_calloc(size_t n, size_t size)
{
	size_t	i;
	char	*str;

	i = 0;
	str = malloc(n * size);
	if (!str)
		return (NULL);
	while (i < n * size)
	{
		str[i] = 0;
		i++;
	}
	return (str);
}

/* returns length of null terminated string */
int	ft_strlen(char *str)
{
	int	i;

	if (!str)
		return (0);
	i = 0;
	while (str[i])
		i++;
	return (i);
}

/* 
	prints a string (in this case to error output)
*/
void	ft_putstr(char *s)
{
	int	i;

	i = 0;
	while (s[i] != '\0')
	{
		i = write(2, &s[i], 1) + i;
	}
}

/*
	compares up to n chars of str1 to str2
	the function compares the strings character by character and 
	returns as soon as a difference is found

	return value:
	<0 if str1 has lower value than str2
	0 if strings are equals
	>0 if str1 has higher value than str2
*/
int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t	i;

	if (n == 0)
		return (0);
	i = 0;
	while (s1[i] != '\0' && s2[i] != '\0' && i < (n - 1))
	{
		if (s1[i] != s2[i])
			return ((unsigned char)s1[i] - (unsigned char)s2[i]);
		i++;
	}
	return ((unsigned char)s1[i] - (unsigned char)s2[i]);
}

/*
	returns true if char represents digit, 
	else returns false
*/
int	ft_isdigit(int c)
{
	if (c >= 48 && c <= 57)
		return (1);
	else
		return (0);
}
