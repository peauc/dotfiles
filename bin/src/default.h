/*
** default.h for default in /home/peau_c/bin
**
** Made by Clement Peau
** Login   <peau_c@epitech.net>
**
** Started on  Wed Feb 17 00:48:19 2016 Clement Peau
** Last update Thu Feb 18 15:28:03 2016 Clement Peau
*/

#ifndef _DEFAULT_

# define _DEFAULT_

# include <lapin.h>

# define PUTERROR(X)	write(2, X, my_strlen(X))
# define PUTSTR(X)	write(1, X, my_strlen(X))

typedef struct s_data
{
  t_bunny_window	*window;
  t_bunny_pixelarray	*pixel;
}		t_data;

#endif /* _DEFAULT_ */
