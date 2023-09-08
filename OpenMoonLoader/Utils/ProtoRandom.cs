using System;
using System.Security.Cryptography;
using System.Collections.Generic;
using System.Numerics;

public class ProtoRandom
{
    private int complexity;

    public ProtoRandom(int complexity = 100)
    {
        this.complexity = complexity;
    }

    private int GetBasicRandomInt32()
    {
        RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
        byte[] randomNumber = new byte[4];
        rng.GetBytes(randomNumber);
        int value = BitConverter.ToInt32(randomNumber, 0);

        if (value < 0)
        {
            value *= -1;
        }

        return value;
    }

    public int GetRandomInt32()
    {
        List<int[]> arrays = new List<int[]>();

        for (int i = 0; i < this.complexity; i++)
        {
            int[] values = new int[this.complexity];

            for (int j = 0; j < this.complexity; j++)
            {
                values[j] = GetBasicRandomInt32();
            }

            arrays.Add(values);
        }

        return arrays[GetBasicRandomInt32() % this.complexity][GetBasicRandomInt32() % this.complexity];
    }

    public int GetRandomInt32(int max)
    {
        return GetRandomInt32() % (max + 1);
    }

    public int GetRandomInt32(int min, int max)
    {
        return GetRandomInt32() % (max - min + 1) + min;
    }

    public string GetRandomString(char[] chars, int length)
    {
        string value = "";

        for (int i = 0; i < length; i++)
        {
            value += chars[GetRandomInt32(0, chars.Length - 1)];
        }

        return value;
    }

    public string GetRandomString(string chars, int length)
    {
        string value = "";

        for (int i = 0; i < length; i++)
        {
            value += chars[GetRandomInt32(0, chars.Length - 1)];
        }

        return value;
    }

    public string GetRandomString(char[] chars, int min, int max)
    {
        return GetRandomString(chars, GetRandomInt32(min, max));
    }

    public string GetRandomString(string chars, int min, int max)
    {
        return GetRandomString(chars, GetRandomInt32(min, max));
    }
}