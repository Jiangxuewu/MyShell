.class public Lu/aly/f;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/g;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/f;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 0

    iput-boolean p2, p0, Lu/aly/f;->a:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lu/aly/f;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lu/aly/f;->a:Z

    return v0
.end method
