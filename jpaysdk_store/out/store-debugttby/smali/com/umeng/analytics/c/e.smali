.class public Lcom/umeng/analytics/c/e;
.super Lcom/umeng/analytics/c/a;
.source "IDMD5Tracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "idmd5"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    const-string v0, "idmd5"

    invoke-direct {p0, v0}, Lcom/umeng/analytics/c/a;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/umeng/analytics/c/e;->b:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/umeng/analytics/c/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
