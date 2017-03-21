.class final Lcom/tencent/bugly/crashreport/crash/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/d;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/j;->a:Lcom/tencent/bugly/crashreport/crash/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/j;->a:Lcom/tencent/bugly/crashreport/crash/d;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/d;->a(Lcom/tencent/bugly/crashreport/crash/d;)V

    return-void
.end method
