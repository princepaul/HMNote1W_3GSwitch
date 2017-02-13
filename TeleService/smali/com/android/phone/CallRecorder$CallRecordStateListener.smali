.class public interface abstract Lcom/android/phone/CallRecorder$CallRecordStateListener;
.super Ljava/lang/Object;
.source "CallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallRecordStateListener"
.end annotation


# virtual methods
.method public abstract onCallRecordFailed(I)V
.end method

.method public abstract onCallRecordStarted()V
.end method

.method public abstract onCallRecordStoped(ILjava/lang/String;)V
.end method
