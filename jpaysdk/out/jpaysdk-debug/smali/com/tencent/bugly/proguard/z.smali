.class public final Lcom/tencent/bugly/proguard/z;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/tencent/bugly/proguard/aa;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    new-instance v0, Lcom/tencent/bugly/proguard/ac;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ac;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/ab;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ab;-><init>()V

    goto :goto_0
.end method
