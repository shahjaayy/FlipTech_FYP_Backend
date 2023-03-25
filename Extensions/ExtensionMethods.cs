using Microsoft.Ajax.Utilities;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace FlipTech_FYP.Extensions
{
    public static class ExtensionMethods
    {
        public static IQueryable<T> WhereIfElse<T>(this IQueryable<T> query, bool condition, Expression<Func<T, bool>> truePredicate, Expression<Func<T, bool>> falsePredicate)
        {
            if (condition)
            {
                return query.Where(truePredicate);
            }

            return query.Where(falsePredicate);
        }
    }
}