/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/23 14:38:10 by mfusil            #+#    #+#             */
/*   Updated: 2022/04/27 19:29:44 by mfusil           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

char	*get_next_line(int fd)
{
	int		verif;
	char	*line;
	char	*temp;
	char	cast[(BUFFER_SIZE / BUFFER_SIZE)];

	if (BUFFER_SIZE == 0)
		return (NULL);
	verif = read(fd, cast, (BUFFER_SIZE / BUFFER_SIZE));
	if (verif < 1 || fd > 1023 || fd == -1)
		return (NULL);
	line = ft_calloc(1, 1);
	while (verif > 0 && cast[0] != '\n' && cast[0] != '\0')
	{
		temp = ft_calloc(2, 1);
		temp[0] = cast[0];
		line = ft_strjoin(line, temp);
		free(temp);
		verif = read(fd, cast, (BUFFER_SIZE / BUFFER_SIZE));
	}
	if (cast[0] == '\n')
		line = ft_strjoin(line, "\n");
	if (verif == -1)
		return (NULL);
	return (line);
}
