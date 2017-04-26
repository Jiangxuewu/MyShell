.class public La/a/a/b/n$a;
.super Ljava/lang/Object;
.source "TTupleProtocol.java"

# interfaces
.implements La/a/a/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/a/d/c;)La/a/a/b/h;
    .locals 1

    .prologue
    .line 36
    new-instance v0, La/a/a/b/n;

    invoke-direct {v0, p1}, La/a/a/b/n;-><init>(La/a/a/d/c;)V

    return-object v0
.end method
