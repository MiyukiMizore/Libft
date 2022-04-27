/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/16 15:53:34 by mfusil            #+#    #+#             */
/*   Updated: 2022/04/27 18:04:15 by mfusil           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

int	ft_arg(va_list arg, char str)
{
	if (str == 'c')
		return (ft_putchar(va_arg(arg, char *)));
	if (str == 's')
		return (ft_putstr(va_arg(arg, char *)));
	if (str == 'p')
	{
		write(1, "0x", 2);
		return (ft_p_puthexa(va_arg(arg, unsigned long)) + 2);
	}
	if (str == 'd' || str == 'i')
		return (ft_int_putnbr(va_arg(arg, int)));
	if (str == 'u')
		return (ft_unsigned_putnbr(va_arg(arg, unsigned int)));
	if (str == 'x' || str == 'X')
		return (ft_puthexa(va_arg(arg, unsigned int), str));
	if (str == '%')
		return (write(1, "%", 1));
	return (0);
}

int	ft_printf(const char *str, ...)
{
	va_list	arg;
	char	*s;
	int		len;
	int		x;

	va_start (arg, str);
	s = (char *)str;
	len = 0;
	x = 0;
	while (s[x])
	{
		if (s[x] == '%')
		{
			len = len + ft_arg(arg, s[x + 1]);
			x++;
		}
		else
		{
			ft_putchar1(s[x]);
			len++;
		}
		x++;
	}
	va_end (arg);
	return (len);
}
