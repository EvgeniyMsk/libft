/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: qsymond <qsymond@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/07 22:50:51 by qsymond           #+#    #+#             */
/*   Updated: 2020/05/10 15:25:04 by qsymond          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void		*ft_calloc(size_t num, size_t size)
{
	void	*new;

	if ((new = (void *)malloc(size * num)) != NULL)
	{
		ft_bzero(new, num * size);
		return (new);
	}
	return (NULL);
}
