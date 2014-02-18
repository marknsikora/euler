#define _GNU_SOURCE
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct _Tree;
typedef struct _Tree Tree;
struct _Tree {
    int node;
    Tree *left;
    Tree *right;
    Tree *next;
};

int euler018(Tree *tree)
{
    int left, right;

    assert(tree != NULL);

    left = 0;
    if (tree->left != NULL) {
        left = euler018(tree->left);
    }

    right = 0;
    if (tree->right != NULL) {
        right = euler018(tree->right);
    }

    tree->node += left > right ? left : right;
    tree->left = NULL;
    tree->right = NULL;

    return tree->node;
}

Tree* tree_new(int i)
{
    Tree *tree;

    tree = malloc(sizeof(Tree));
    if (tree == NULL) {
        return NULL;
    }

    tree->left = NULL;
    tree->right = NULL;
    tree->next = NULL;

    tree->node = i;

    return tree;
}

Tree* tree_new_from_file(FILE *fp)
{
    const char delim[] = " ";
    char *line, *token;
    size_t n;
    ssize_t len;
    Tree *tree, *head, *last, *next;

    assert(fp != NULL);

    line = NULL;
    n = 0;
    len = getline(&line, &n, fp);

    if (len == -1) {
        return NULL;
    }

    head = last = tree = NULL;
    token = strtok(line, delim);
    while (token != NULL) {
        tree = tree_new(atoi(token));

        if (head == NULL) {
            head = tree;
        }

        if (last != NULL) {
            last->next = tree;
        }

        last = tree;
        token = strtok(NULL, delim);
    }

    free(line);
    line = NULL;
    n = 0;

    next = tree_new_from_file(fp);
    if (next != NULL) {
        for (tree = head; tree != NULL && next != NULL; tree = tree->next) {
            tree->left = next;
            tree->right = next->next;

            next = next->next;
        }
    }

    return head;
}

int main(int argc, char **argv)
{
    int solution;
    Tree *triangle;
    FILE *fp;

    fp = fopen("triangle.txt", "r");
    triangle = tree_new_from_file(fp);
    fclose(fp);
    fp = NULL;

    solution = euler018(triangle);

    printf("%d\n", solution);

    return 0;
}
