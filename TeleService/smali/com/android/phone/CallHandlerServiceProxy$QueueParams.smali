.class Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
.super Ljava/lang/Object;
.source "CallHandlerServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallHandlerServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueParams"
.end annotation


# static fields
.field private static final METHOD_DISCONNECT:I = 0x3

.field private static final METHOD_INCOMING:I = 0x1

.field private static final METHOD_UPDATE:I = 0x2

.field private static final METHOD_VT_DIAL_SUCCESS:I = 0x4

.field private static final METHOD_VT_SETTING_PARAMS:I = 0x5

.field private static final METHOD_VT_STATE_CHANGE:I = 0x6


# instance fields
.field private final mArg:Ljava/lang/Object;

.field private mArgExtra:Ljava/lang/Object;

.field private final mMethod:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArgExtra:Ljava/lang/Object;

    .line 681
    iput p1, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I

    .line 682
    iput-object p2, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;

    .line 683
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/android/phone/CallHandlerServiceProxy$1;

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "argExtra"    # Ljava/lang/Object;

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArgExtra:Ljava/lang/Object;

    .line 691
    iput p1, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I

    .line 692
    iput-object p2, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;

    .line 693
    iput-object p3, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArgExtra:Ljava/lang/Object;

    .line 694
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/android/phone/CallHandlerServiceProxy$1;

    .prologue
    .line 672
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    .prologue
    .line 672
    iget v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArgExtra:Ljava/lang/Object;

    return-object v0
.end method
