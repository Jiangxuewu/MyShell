.class Lu/aly/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p2, "cc.db"

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-direct {p0}, Lu/aly/c;->b()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    new-instance v0, Lu/aly/e;

    invoke-direct {v0, p1, p2}, Lu/aly/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4, p5}, Lu/aly/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILu/aly/c$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lu/aly/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lu/aly/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/c;
    .locals 2

    const-class v1, Lu/aly/c;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lu/aly/c;->b:Landroid/content/Context;

    invoke-static {}, Lu/aly/c$a;->a()Lu/aly/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists limitedck(Id INTEGER primary key autoincrement, ck TEXT unique)"

    iput-object v0, p0, Lu/aly/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lu/aly/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "create reference table error!"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lu/aly/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "aggregated"

    invoke-virtual {p0, v1, v0}, Lu/aly/c;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "aggregated_cache"

    invoke-virtual {p0, v1, v0}, Lu/aly/c;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lu/aly/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_1
    const-string v1, "system"

    invoke-virtual {p0, v1, v0}, Lu/aly/c;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lu/aly/c;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_2
    const-string v1, "limitedck"

    invoke-virtual {p0, v1, v0}, Lu/aly/c;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lu/aly/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists system(Id INTEGER primary key autoincrement, key TEXT, timeStamp INTEGER, count INTEGER)"

    iput-object v0, p0, Lu/aly/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lu/aly/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "create system table error!"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists aggregated_cache(Id INTEGER primary key autoincrement, key TEXT, totalTimestamp TEXT, value INTEGER, count INTEGER, label TEXT, timeWindowNum TEXT)"

    iput-object v0, p0, Lu/aly/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lu/aly/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists aggregated(Id INTEGER primary key autoincrement, key TEXT, totalTimestamp TEXT, value INTEGER, count INTEGER, label TEXT, timeWindowNum TEXT)"

    iput-object v0, p0, Lu/aly/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lu/aly/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "create aggregated table error!"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select count(*) as c from sqlite_master where type =\'table\' and name =\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-direct {p0, p1}, Lu/aly/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    invoke-direct {p0, p1}, Lu/aly/c;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    invoke-direct {p0, p1}, Lu/aly/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
