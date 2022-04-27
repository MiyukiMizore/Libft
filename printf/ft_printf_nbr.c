/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_nbr.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/18 13:37:53 by mfusil            #+#    #+#             */
/*   Updated: 2022/04/27 18:04:02 by mfusil           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

int	ft_putchar1(char c)
{
	return (write(1, &c, 1));
}

int	ft_int_putnbr(int nbr)
{
	unsigned int	n;
	int				len;

	len = 0;
	if (nbr < 0)
	{
		ft_putchar1('-');
		n = nbr * -1;
		len++;
	}
	else
		n = nbr;
	if (n > 9)
	{
		len = len + ft_int_putnbr(n / 10);
		n %= 10;
	}
	ft_putchar1(n + '0');
	len++;
	return (len);
}

int	ft_unsigned_putnbr(unsigned int nbr)
{
	int	len;

	len = 0;
	if (nbr > 9)
	{
		len = len + ft_unsigned_putnbr(nbr / 10);
		nbr %= 10;
	}
	ft_putchar1(nbr + '0');
	len++;
	return (len);
}
