.class Lu/aly/m$11;
.super Lu/aly/f;


# instance fields
.field final synthetic a:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;)V
    .locals 0

    iput-object p1, p0, Lu/aly/m$11;->a:Lu/aly/m;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/m$11;->a:Lu/aly/m;

    invoke-static {v0}, Lu/aly/m;->k(Lu/aly/m;)V

    :cond_0
    return-void
.end method
