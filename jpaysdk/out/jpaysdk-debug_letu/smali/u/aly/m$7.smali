.class Lu/aly/m$7;
.super Lu/aly/f;


# instance fields
.field final synthetic a:Lu/aly/f;

.field final synthetic b:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;Lu/aly/f;)V
    .locals 0

    iput-object p1, p0, Lu/aly/m$7;->b:Lu/aly/m;

    iput-object p2, p0, Lu/aly/m$7;->a:Lu/aly/f;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 3

    instance-of v0, p1, Lu/aly/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/m$7;->b:Lu/aly/m;

    check-cast p1, Lu/aly/h;

    invoke-static {v0, p1}, Lu/aly/m;->a(Lu/aly/m;Lu/aly/h;)Lu/aly/h;

    :cond_0
    iget-object v0, p0, Lu/aly/m$7;->a:Lu/aly/f;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    return-void
.end method
