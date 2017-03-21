.class final Lcom/bb_sz/ndk/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/bb_sz/ndk/a/a;

.field private synthetic b:Lcom/bb_sz/ndk/a/b;


# direct methods
.method constructor <init>(Lcom/bb_sz/ndk/a/b;Lcom/bb_sz/ndk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/bb_sz/ndk/a/c;->b:Lcom/bb_sz/ndk/a/b;

    iput-object p2, p0, Lcom/bb_sz/ndk/a/c;->a:Lcom/bb_sz/ndk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bb_sz/ndk/a/c;->b:Lcom/bb_sz/ndk/a/b;

    iget-object v1, p0, Lcom/bb_sz/ndk/a/c;->a:Lcom/bb_sz/ndk/a/a;

    invoke-static {v0, v1}, Lcom/bb_sz/ndk/a/b;->a(Lcom/bb_sz/ndk/a/b;Lcom/bb_sz/ndk/a/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bb_sz/ndk/a/c;->b:Lcom/bb_sz/ndk/a/b;

    iget-object v1, p0, Lcom/bb_sz/ndk/a/c;->a:Lcom/bb_sz/ndk/a/a;

    invoke-virtual {v0, v1}, Lcom/bb_sz/ndk/a/b;->a(Lcom/bb_sz/ndk/a/a;)V

    :cond_0
    iget-object v0, p0, Lcom/bb_sz/ndk/a/c;->b:Lcom/bb_sz/ndk/a/b;

    iget-object v1, p0, Lcom/bb_sz/ndk/a/c;->a:Lcom/bb_sz/ndk/a/a;

    invoke-virtual {v0, v1}, Lcom/bb_sz/ndk/a/b;->b(Lcom/bb_sz/ndk/a/a;)V

    return-void
.end method
