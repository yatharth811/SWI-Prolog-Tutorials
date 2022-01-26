% Test inputs for BST
% ibt(node(1,node(5,node(4,node(2,empty,empty),node(3,empty,empty)),empty),empty))
% ibt(node(3, node(2, empty, empty), node(1, empty, empty)))
% ibt(node(3, node(2, node(6, empty, empty), empty), node(1, empty, empty)))
% ibt(node(3, node(1, empty, empty), node(4, empty, empty)))

% Binary tree definition. 
ibt(empty).
ibt(node(N, L, R)) :- integer(N), ibt(L), ibt(R).

%Useful functions like reverse etc.

% Implemented reverse function to reverse list
accrev([H|T], A, R) :- accrev(T, [H | A], R).
accrev([], A, A).
reverse(L, R) :- accrev(L, [], R).

% Implemented member function to check if an element is present in list
member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

% mydistinct function produces a new list out of original list containing only first occurence of elements 
mydistinct([], A, A).
mydistinct([H | T], A, R) :-    member(H, A), mydistinct(T, A, R);
                                not(member(H, A)), append(A, [H], Anew), mydistinct(T, Anew, R). 
mydistinct(L, R) :- mydistinct(L, [], R).

% mydistinct2 function produces a new list out of original list containing only second occurence of elements 
mydistinct2([], _, B, B).
mydistinct2([H | T], A, B, R) :- not(member(H, A)), not(member(H, B)), mydistinct2(T, [H | A], B, R);
                                 member(H, A), not(member(H, B)), mydistinct2(T, A, [H|B], R);
                                 member(H, A), member(H, B), mydistinct2(T, A, B, R).

mydistinct2(L, R) :- mydistinct2(L, [], [], S), reverse(S, R).

% function to check if array is sorted or not.
myisSorted([_]).
myisSorted([H1, H2|T]) :- H1 =< H2, myisSorted([H2 | T]). 


% function to calculate length of a list
accLen([_|T],A, L) :-  Anew is A+1, accLen(T,Anew, L).
accLen([],A, A).
accLen(List,Length) :- accLen(List,0,Length).

% function to insert an element in sorted list
sortedInsert(N, [], A, R) :-    not(member(N, A)), R = [N|A];
                                member(N, A), R=A.
sortedInsert(N, [H | T], A, R) :-   N > H, sortedInsert(N, T, [H|A], R);
                                    N =< H, not(member(N, A)), sortedInsert(N, T, [H,N|A], R);
                                    N =< H, member(N, A), sortedInsert(N, T, [H|A], R).
sortedInsert(N, L, R) :- sortedInsert(N, L, [], S), reverse(S, R).

% function to remove an element from a list.
sortedDelete(_, [], A, A).
sortedDelete(N, [H | T], A, R) :-   N =:= H, sortedDelete(N, T, A, R);
                                    N =\= H, sortedDelete(N, T, [H|A], R).

sortedDelete(N, L, R) :- sortedDelete(N, L, [], S), reverse(S, R).


%1. function to output number of nodes in the BST. sumofnodes(tree) = sumof nodes in left subtree + sum of nodes in right subtree + 1(for rootnode).
size(ibt(empty), 0).
size(ibt(node(_, L, R)), N) :- size(ibt(L), A), size(ibt(R), B), N is 1+A+B.

%2. function to output height of tree. height(tree) = 1 + max(ht(left subtree), ht(right subtree)).
height(ibt(empty), 0).
height(ibt(node(_, L, R)), N) :- height(ibt(L), A),height(ibt(R), B), A > B, N is 1+A;
height(ibt(R), B), height(ibt(L), A), B >= A, N is 1+B.

%3. function to output preorder traversal using append.
preorder(ibt(empty), []).
preorder(ibt(node(X, L, R)), Res) :- preorder(ibt(L),A), preorder(ibt(R), B), append([X | A],B, Res).

%4. function to output inorder traversal using append.
inorder(ibt(empty), []).
inorder(ibt(node(X, L, R)), Res) :- inorder(ibt(L), A), inorder(ibt(R), B), append(A, [X], Res2), append(Res2, B, Res).

%5. function to output postorder traversal using append.
postorder(ibt(empty), []).
postorder(ibt(node(X, L, R)), Res) :- postorder(ibt(L), A), postorder(ibt(R), B), append(A, B, Res2), append(Res2, [X], Res).

%6. function to output preorder traversal using tail-recursion.
trPreorder(ibt(empty), A, A).
trPreorder(ibt(node(X, L, R)), A, S) :- append(A, [X], Anew), trPreorder(ibt(L), Anew, Res), trPreorder(ibt(R), Res, S).
trPreorder(L, R) :- trPreorder(L, [], R).

%7. function to output inorder traversal using tail-recursion.
trInorder(ibt(empty), A, A).
trInorder(ibt(node(X, L, R)), A, S) :- trInorder(ibt(R), A, Res), trInorder(ibt(L), [X|Res], S).
trInorder(L, R) :- trInorder(L, [], R).

%8. function to output postorder traversal using tail-recursion.
trPostorder(ibt(empty), A, A).
trPostorder(ibt(node(X, L, R)), A, S) :- trPostorder(ibt(L), Res, S), trPostorder(ibt(R), [X|A], Res).
trPostorder(L, R) :- trPostorder(L, [], R).

%9. function to output euler traversal of a binary tree.
eulerTour(ibt(empty), []).
eulerTour(ibt(node(X, L, R)), E) :- eulerTour(ibt(L), A), eulerTour(ibt(R), B),  append([X|A], [X], Res1), append(B, [X], Res2), append(Res1, Res2, E).

%10. function to output preorder traversal using euler tour. take first occurence of elements from euler tour to get preorder traversal.
preET(BT, L) :- eulerTour(BT, R), mydistinct(R, L). 

%11. function to output inorder traversal using euler tour. take second occurence of elements from euler tour to get inorder traversal.
inET(BT, L) :- eulerTour(BT, R), mydistinct2(R, L).

%12. function to output postorder traversal using euler tour. take last occurence of elements from euler tour to get postorder traversal.
postET(BT, L) :- eulerTour(BT, R), reverse(R,S), mydistinct(S, T), reverse(T, L).

%13. function to output string representation using recursion and string concatenation.
toString(ibt(empty), "()").
toString(ibt(node(X, L, R)), Res) :- toString(ibt(L), A), toString(ibt(R), B), atom_string(X, String)
,string_concat("(",String, String1), string_concat(String1, ", ", String2), string_concat(String2, A, String3), 
string_concat(String3, ", ", String4), string_concat(String4, B, String5), string_concat(String5, ")", Res).


%14. function to check if tree is balanced , i.e. |ht of left subtree - ht of right subtree| =< 1.
isBalanced(ibt(node(_, L, R))) :-   height(ibt(L), A), height(ibt(R), B), 0 is abs(A-B);
                                    height(ibt(L), A), height(ibt(R), B), 1 is abs(A-B).

%15. function to check if given tree is BST by checking inorder traversal. If inorder is sorted then given BT is a BST.
isBST(BT) :- inorder(BT, L), myisSorted(L).

% 16. function to make BST out of array. First sort the array and make middle element root and left part of array as left subtree and right part of array as right subtree, and do same recursively on left array and right array.
makeBST2([], empty).
makeBST2(A, BST) :- sort(A, X), BST = node(N, L, R), append(Pre, [N|Post], X), 
                    accLen(Pre, L1), accLen(Post, L2), 1 >= abs(L1 - L2),  makeBST2(Pre, L), makeBST2(Post, R). 

makeBST(L, R) :- makeBST2(L, X), R = ibt(X). 


%17. function to check if an element is present in BST. 
lookup(X, ibt(node(N, L, R))) :-    X =:= N;
                                    X < N, lookup(X, ibt(L));
                                    X > N, lookup(X, ibt(R)).

%18. function to insert an element to BST if not present already.
insert(N, BST1, BST2) :- not(lookup(N, BST1)), inorder(BST1, L), sortedInsert(N, L, S), makeBST(S, BST2).

%19. function to delete element from BST if present.
delete(N, BST1, BST2) :- lookup(N, BST1), inorder(BST1, L), sortedDelete(N, L, S), makeBST(S, BST2).