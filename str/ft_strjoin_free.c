/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin_free.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/27 19:16:30 by mfusil            #+#    #+#             */
/*   Updated: 2022/04/27 19:37:31 by mfusil           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

char	*ft_strjoin_free(char const *s1, char const *s2)
{
	char	*str;
	int		x;
	int		y;

	if (!s1 || !s2)
		return (NULL);
	str = (char *)malloc ((ft_strlen((char *)s1)
				+ ft_strlen((char *)s2) + 1) * sizeof(char));
	if (!str)
		return (NULL);
	x = -1;
	while (s1[++x])
		str[x] = s1[x];
	x = -1;
	y = ft_strlen(s1);
	while (s2[++x])
	{
		str[y] = s2[x];
		y++;
	}
	str[y] = '\0';
	free((char *)s1);
	return (str);
}
