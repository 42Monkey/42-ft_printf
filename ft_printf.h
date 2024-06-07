#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h> // va_list
# include <stddef.h> // size_t
# include <unistd.h> // write
# include <stdlib.h> // malloc
# include <limits.h> // INT_MIN && INT_MAX

int		ft_printf(const char *str, ...);
int		ft_printf_character(char c);
int		ft_printf_hex(unsigned long long x, char x_or_x);
int		ft_printf_number(int n);
int		ft_printf_pointer(void *ptr);
int		ft_printf_string(const char *str);
int		ft_printf_unsigned_number(unsigned int n);

size_t	ft_strlen(const char *s);
char	*ft_utoa(unsigned int n);

#endif
