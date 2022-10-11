// Question-1
// TimeComplexity:O(n), SpaceComplexity:O(n)
void printPair(vector<int> input, int param)
{
    unordered_map<int, int> mp;
    for (int i = 0; i < input.size(); i++)
    {

        // Handling edge case.When current value is 0 and param is also zero
        if (input[i] == 0)
        {
            if (param == 0)
            {
                // print the pair (0,anynumber in the array)
                if (i == 0)
                    cout << 0 << " " << input[i + 1];
                else
                    cout << input[0] << " " << 0;
            }
            else
                continue;
        }
        if (input[i] % param == 0)
        {
            if (mp.find(param / input[i]) != mp.end())
            {
                // printing the pair
                cout << mp[param / input[i]] << " " << input[i];
            }
        }
        // storing current vale in map
        mp[input[i]] = 1;
    }
}




// Question-2
// TimeComplexity:O(nlogn), SpaceComplexity:O(1)
void printMaxTriplet(vector<int> input)
{
    // sorting the array in ascending order
    sort(input.begin(), input.end());
    int n = input.size();
    // There are two possibilities
    int possibility1 = input[n - 1] * input[n - 2] * input[n - 3];
    int possibility2 = input[0] * input[1] * input[n - 1];
    int maxTriplet = max(possibility1, possibility2);

    // printing maxTriplet
    cout << maxTriplet;
}




// Question-3
// TimeComplexity:O(n), SpaceComplexity:O(n)

void countLastChar(vector<char> stream)
{
    unordered_map<char, int> mp;
    char last;
    for (int i = 0; i < stream[i] != '\n'; i++)
    {

        mp[stream[i]]++;
        last = stream[i];
    }
    // printing last character ocurences
    cout << mp[last];
}




// Question-4
// TimeComplexity:O(n), SpaceComplexity:O(n)

void checkBalanced(vector<char> expression)
{
    // declaring a stack
    stack<char> s;
    for (int i = 0; i < expression.size(); i++)
    {
        if (s.empty())
            s.push(expression[i]);
        else if (expression[i] == '}' && s.top() == '{')
            s.pop();
        else if (expression[i] == ']' && s.top() == '[')
            s.pop();
        else if (expression[i] == ')' && s.top() == '(')
            else s.push(expression[i]);
    }
    if (s.empty())
        cout << 'True';
    else
        cout << "False";
}




// Question-5
// Creating a class Node
// TimeComplexity:O(noOfNodes), SpaceComplexity:O(1)

class Node
{
public:
    Node *next;
    int data;
    Node(int val)
    {
        next = 0;
        data = val;
    }
};
// This function creates a linked list by inserting new node at start.
void insert(Node *head, int value)
{
    if (head == 0)
        head = new Node(value);
    else
    {
        Node *newNode = new Node(value);
        newNode->next = head->next;
        head = newNode;
    }
    return (head);
}
void findMiddle(Node *head)
{
    // using fast and slow pointer concept
    Node *fast = head, *slow = head;
    while (fast != 0 && fast->next != 0)
    {
        slow = slow->next;
        fast = fast->next->next;
    }
    // printing middle element.
    cout << slow->data;
}
int main()
{

    Node *head = NULL;
    head = insert(head, 1);
    head = insert(head, 2);
    head = insert(head, 3);
    head = insert(head, 4);
    head = insert(head, 5);
    findMiddle(head);
}



// Question-6
// TimeComplexity:O(n*n), SpaceComplexity:O(1)
// n is row length
void printPattern(int rowlength)
{
    int rowno, hold = 1;
    for (int i = 0; i < rowlength; i++)
    {
        for (int gap = 1; gap <= rowlength - i; gap++)
        {
            cout << " ";
        }
        for (j = 0; j <= i; j++)
        {
            if (j == 0 || i == 0)
                hold = 1;
            else
                hold = hold * (i - j + 1) / j;

            cout << hold;
        }
        // go to newline
        cout << "\n";
    }
}



// Question-7
// TimeComplexity:O(nlogn), SpaceComplexity:O(1)

void printSecondMaxDiff(vector<int> input)
{
    // sorting the input array
    sort(input.begin(), input.end());
    // First maximum difference will always be difference of minimum and maximum number
    int n = input.size();
    int firstMax = input[n - 1] - input[0];
    // There are two possibilities for second max difference
    int possibility1 = input[n - 1] - input[1];
    int possibility2 = input[n - 2] - input[0];
    int secondMaxDiff = max(possibility1, possibility2);

    cout << secondMaxDiff;
}