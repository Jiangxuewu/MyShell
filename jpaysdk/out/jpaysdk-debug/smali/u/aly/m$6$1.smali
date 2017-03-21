.class Lu/aly/m$6$1;
.super Lu/aly/f;


# instance fields
.field final synthetic a:Lu/aly/m$6;


# direct methods
.method constructor <init>(Lu/aly/m$6;)V
    .locals 0

    iput-object p1, p0, Lu/aly/m$6$1;->a:Lu/aly/m$6;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 2

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lu/aly/m$6$1;->a:Lu/aly/m$6;

    iget-object v0, v0, Lu/aly/m$6;->b:Lu/aly/m;

    invoke-static {v0}, Lu/aly/m;->e(Lu/aly/m;)Lu/aly/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/h;->a(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lu/aly/m$6$1;->a:Lu/aly/m$6;

    iget-object v0, v0, Lu/aly/m$6;->b:Lu/aly/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/m;->a(Lu/aly/m;Z)Z

    return-void
.end method
