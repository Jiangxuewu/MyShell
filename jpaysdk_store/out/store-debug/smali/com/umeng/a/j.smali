.class public Lcom/umeng/a/j;
.super Ljava/lang/Object;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/a/j$a;,
        Lcom/umeng/a/j$j;,
        Lcom/umeng/a/j$c;,
        Lcom/umeng/a/j$b;,
        Lcom/umeng/a/j$i;,
        Lcom/umeng/a/j$f;,
        Lcom/umeng/a/j$e;,
        Lcom/umeng/a/j$d;,
        Lcom/umeng/a/j$g;,
        Lcom/umeng/a/j$h;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 48
    .line 49
    packed-switch p0, :pswitch_data_0

    .line 61
    :pswitch_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 58
    :pswitch_1
    const/4 v0, 0x1

    .line 59
    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
