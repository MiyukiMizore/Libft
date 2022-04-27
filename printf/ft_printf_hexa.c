/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_hexa.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/18 15:11:58 by mfusil            #+#    #+#             */
/*   Updated: 2022/04/27 18:03:55 by mfusil           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

int	ft_puthexa(unsigned int nbr, char str)
{
	int	len;

	len = 0;
	if (nbr >= 16)
	{
		len += ft_puthexa(nbr / 16, str);
		len += ft_puthexa(nbr % 16, str);
	}
	else
	{
		if (nbr <= 9)
		{
			len++;
			ft_putchar1(nbr + '0');
		}
		else
		{
			if (str == 'X')
				ft_putchar1(nbr - 10 + 'A');
			if (str == 'x')
				ft_putchar1(nbr - 10 + 'a');
			len++;
		}
	}
	return (len);
}

int	ft_p_puthexa(unsigned long nbr)
{
	int	len;

	len = 0;
	if (nbr >= 16)
	{
		len += ft_p_puthexa(nbr / 16);
		len += ft_p_puthexa(nbr % 16);
	}
	else
	{
		if (nbr <= 9)
		{
			len++;
			ft_putchar1(nbr + '0');
		}
		else
		{
			ft_putchar1(nbr - 10 + 'a');
			len++;
		}
	}
	return (len);
}
