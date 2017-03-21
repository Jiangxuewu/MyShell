.class Lu/aly/m$9;
.super Lu/aly/f;


# instance fields
.field final synthetic a:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;)V
    .locals 0

    iput-object p1, p0, Lu/aly/m$9;->a:Lu/aly/m;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    instance-of v0, p1, Lu/aly/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu/aly/m$9;->a:Lu/aly/m;

    check-cast p1, Lu/aly/h;

    invoke-static {v0, p1}, Lu/aly/m;->a(Lu/aly/m;Lu/aly/h;)Lu/aly/h;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/m$9;->a:Lu/aly/m;

    invoke-static {v0}, Lu/aly/m;->i(Lu/aly/m;)V

    goto :goto_0
.end method
