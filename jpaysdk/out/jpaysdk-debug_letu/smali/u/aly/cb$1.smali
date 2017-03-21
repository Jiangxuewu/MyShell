.class Lu/aly/cb$1;
.super Lu/aly/f;


# instance fields
.field final synthetic a:Lu/aly/cb;


# direct methods
.method constructor <init>(Lu/aly/cb;)V
    .locals 0

    iput-object p1, p0, Lu/aly/cb$1;->a:Lu/aly/cb;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-void
.end method
