.class Lcom/android/phone/CallNotifier$CustomInfo;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomInfo"
.end annotation


# instance fields
.field public callVideo:I

.field public date:J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/android/phone/CallNotifier$CustomInfo;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CallNotifier;
    .param p2, "x1"    # Lcom/android/phone/CallNotifier$1;

    .prologue
    .line 2915
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier$CustomInfo;-><init>(Lcom/android/phone/CallNotifier;)V

    return-void
.end method
