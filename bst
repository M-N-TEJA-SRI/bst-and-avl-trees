// Online C++ compiler to run C++ program online
#include <iostream>
#include<stdlib.h>
#include<vector>
using namespace std;
struct node{
    int data;
    struct node *left=NULL;
    struct node *right=NULL;
};
struct node* create(int x){
    struct node *newnode=(struct node *)malloc(sizeof(struct node));
    newnode->data=x;
    return newnode;
}
struct node* insert(struct node *root,int x){
    if(root==NULL)
    root=create(x);
    else if(root->data>x)
    root->left=insert(root->left,x);
    else
    root->right=insert(root->right,x);
    return root;
}
vector<int> inorder(struct node *root,vector<int>& x){
    if(root!=NULL){
        inorder(root->left,x);
        x.push_back(root->data);
inorder(root->right,x);
    }
    return x;
}
vector<int> preorder(struct node *root,vector<int>& x){
    if(root!=NULL){
        x.push_back(root->data);
        preorder(root->left,x);
       
preorder(root->right,x);
    }
    return x;
}
vector<int> postorder(struct node *root,vector<int>& x){
    if(root!=NULL){
        postorder(root->left,x);
        
postorder(root->right,x);
x.push_back(root->data);
    }
    return x;
}
int main() {
    // Write C++ code here
struct node *root=NULL;
int n;
cin>>n;
int a[n],i;
for(i=0;i<n;i++){
    cin>>a[i];
    root=insert(root,a[i]);
}
vector<int>x,y,z;
inorder(root,x);
for(auto it:x){
    cout<<it<<" ";
}
cout<<endl;
preorder(root,y);
for(auto it:y){
    cout<<it<<" ";
}
cout<<endl;
postorder(root,z);
for(auto it:z){
    cout<<it<<" ";
}
cout<<endl;
    return 0;
}
output
5
4 9 1 82 0
0 1 4 9 82 
4 1 0 9 82 
0 1 82 9 4 
