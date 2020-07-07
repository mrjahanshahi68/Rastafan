using Rasta.Common.Entities;
using Rasta.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rasta.Domain
{
    public interface IBusinessRule<TEntity> where TEntity :class,IEntity
    {
        AppUserInfo UserContext { get; set; }
        IUnitOfWork UnitOfWork { get; set; }
        IRepository<TEntity> Repository { get;}
        TEntity FindEntity(int id);
        IQueryable<TEntity> Queryable(bool containsDeletedData=false);
        void InsertEntity(TEntity entity);
        void UpdateEntity(TEntity entity);
        void DeleteEntity(TEntity entity);

    }
}
