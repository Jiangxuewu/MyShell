.class Lu/aly/ar$2;
.super Lu/aly/ca;


# instance fields
.field final synthetic a:Lu/aly/ar;


# direct methods
.method constructor <init>(Lu/aly/ar;)V
    .locals 0

    iput-object p1, p0, Lu/aly/ar$2;->a:Lu/aly/ar;

    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lu/aly/ar$2;->a:Lu/aly/ar;

    invoke-static {v0}, Lu/aly/ar;->a(Lu/aly/ar;)Lu/aly/au;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/au;->a()V

    return-void
.end method
