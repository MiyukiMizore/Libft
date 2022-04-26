/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/24 13:58:50 by mfusil            #+#    #+#             */
/*   Updated: 2022/04/26 18:44:21 by mfusil           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

char	*ft_strchr(const char *s, int c)
{
	int		x;

	x = 0;
	while (s[x])
	{
		if (s[x] == c)
			return ((char *)&s[x]);
		x++;
	}
	if (s[x] == c)
		return ((char *)&s[x]);
	return (NULL);
}
