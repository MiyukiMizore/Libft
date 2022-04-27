/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_str.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/18 13:31:53 by mfusil            #+#    #+#             */
/*   Updated: 2022/04/27 18:04:08 by mfusil           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

int	ft_putchar(char *c)
{
	write(1, &c, 1);
	return (1);
}

int	ft_putstr(char *str)
{
	int	len;
	int	x;

	x = 0;
	len = 0;
	if (!str)
		return (write(1, "(null)", 6));
	while (str[x])
	{
		ft_putchar1(str[x]);
		len++;
		x++;
	}
	return (len);
}
