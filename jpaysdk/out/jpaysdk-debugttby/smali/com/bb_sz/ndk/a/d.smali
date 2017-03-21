.class final Lcom/bb_sz/ndk/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/bb_sz/ndk/a/b;

.field private synthetic b:Lcom/bb_sz/ndk/a/c;


# direct methods
.method constructor <init>(Lcom/bb_sz/ndk/a/c;Lcom/bb_sz/ndk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/bb_sz/ndk/a/d;->b:Lcom/bb_sz/ndk/a/c;

    iput-object p2, p0, Lcom/bb_sz/ndk/a/d;->a:Lcom/bb_sz/ndk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bb_sz/ndk/a/d;->b:Lcom/bb_sz/ndk/a/c;

    iget-object v1, p0, Lcom/bb_sz/ndk/a/d;->a:Lcom/bb_sz/ndk/a/b;

    invoke-static {v0, v1}, Lcom/bb_sz/ndk/a/c;->a(Lcom/bb_sz/ndk/a/c;Lcom/bb_sz/ndk/a/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bb_sz/ndk/a/d;->b:Lcom/bb_sz/ndk/a/c;

    iget-object v1, p0, Lcom/bb_sz/ndk/a/d;->a:Lcom/bb_sz/ndk/a/b;

    invoke-virtual {v0, v1}, Lcom/bb_sz/ndk/a/c;->a(Lcom/bb_sz/ndk/a/b;)V

    :cond_0
    iget-object v0, p0, Lcom/bb_sz/ndk/a/d;->b:Lcom/bb_sz/ndk/a/c;

    iget-object v1, p0, Lcom/bb_sz/ndk/a/d;->a:Lcom/bb_sz/ndk/a/b;

    invoke-virtual {v0, v1}, Lcom/bb_sz/ndk/a/c;->b(Lcom/bb_sz/ndk/a/b;)V

    return-void
.end method
