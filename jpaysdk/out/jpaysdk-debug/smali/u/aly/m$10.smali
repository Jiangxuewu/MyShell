.class Lu/aly/m$10;
.super Lu/aly/f;


# instance fields
.field final synthetic a:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;)V
    .locals 0

    iput-object p1, p0, Lu/aly/m$10;->a:Lu/aly/m;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/m$10;->a:Lu/aly/m;

    invoke-static {v0}, Lu/aly/m;->j(Lu/aly/m;)Lu/aly/p;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/p;->b()V

    :cond_0
    return-void
.end method
