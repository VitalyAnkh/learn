typedef int data_t;
typedef struct tree tree_t;
struct tree {
    data_t data;
    tree_t *left;
    tree_t *right;
};


int count =0;
int dump_tree_data(tree_t *t, data_t A[]){    
    if(t != NULL){
     A[count]=t->data;
     count++;
     dump_tree_data(t->left, A);
     dump_tree_data(t->right, A); 
    }        

}


int cmp_data(data_t *d1, data_t *d2);

int same_shape(data_t *d1, data_t *d2){
    if (d1==NULL&&d2==NULL) return 1;
    if ((d1==NULL&&d2!=NULL) ||(d1!=NULL&&d2==NULL)) return 0;
    if (d1!=NULL&&d2!=NULL && com_data(d1,d2)){
        return same_shape(d1->left,d2->left)&&same_shape(d1->right,d2->right);
    }
}

void remove(book_t B[],int nbooks, int b_num){
    
}