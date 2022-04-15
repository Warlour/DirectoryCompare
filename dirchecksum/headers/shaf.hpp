#ifndef SHAF_HPP
#define SHAF_HPP

void sha256_hash_string (unsigned char hash[SHA256_DIGEST_LENGTH], char outputBuffer[65]);
void sha256_string(char *string, char outputBuffer[65]);
int sha256_file(char *path, char outputBuffer[65]);

#endif