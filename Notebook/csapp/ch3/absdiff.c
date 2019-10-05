long test(long x, long y)
{
    long result;
    if (x < y)
    {
        result = y - x;
        return result;
    }
    else
    {
        result = x - y;
        return result;
    }
}