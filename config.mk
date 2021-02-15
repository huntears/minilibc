SRC			=	src/strlen.S			\

OBJ 		=	$(SRC:.S=.o)

LDFLAGS		=	-shared

CFLAGS		=	-I./include/ -W -Wall -Wextra

TEST_SRC	=	tests/tests_test.c		\

TEST_OBJ	=	$(TEST_SRC:.c=.o)

TEST_LFLAGS	=	-lcriterion

COVERAGE	=	$(SRC:.S=.gcda)			\
				$(SRC:.S=.gcno)			\
				$(TEST_SRC:.c=.gcno)	\
				$(TEST_SRC:.c=.gcda)	\

TARGET	=	libasm.so

TARGET_TEST	=	unit_tests