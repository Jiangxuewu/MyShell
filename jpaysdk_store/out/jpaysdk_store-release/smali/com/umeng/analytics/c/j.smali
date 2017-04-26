.class public Lcom/umeng/analytics/c/j;
.super Lcom/umeng/analytics/c/a;
.source "NewUMIDTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "newumid"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const-string v0, "newumid"

    invoke-direct {p0, v0}, Lcom/umeng/analytics/c/a;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/umeng/analytics/c/j;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/analytics/c/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/c/h;->b()Lcom/umeng/analytics/c/h$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c/h$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
